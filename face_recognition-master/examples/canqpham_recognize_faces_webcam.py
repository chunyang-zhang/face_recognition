# Created by canqpham at 2019-05-24
from imutils.video import VideoStream
import face_recognition
import argparse
import imutils
import pickle
import time
import cv2
import numpy as np
import json
import requests
import datetime


# construct the argument parser and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-e", "--encodings", required=True,
	help="path to serialized db of facial encodings")
ap.add_argument("-o", "--output", type=str,
	help="path to output video")
ap.add_argument("-y", "--display", type=int, default=1,
	help="whether or not to display output frame to screen")
ap.add_argument("-d", "--detection-method", type=str, default="hog",
	help="face detection model to use: either `hog` or `cnn`")
args = vars(ap.parse_args())

# load the known faces and embeddings
print("[INFO] loading encodings...")
data = pickle.loads(open(args["encodings"], "rb").read())
print("Label: ", data['names'])
# initialize the video stream and pointer to output video file, then
# allow the camera sensor to warm up
print("[INFO] starting video stream...")
vs = VideoStream(src=0).start()
writer = None
time.sleep(2.0)
check = []


def checkEmpty(name, array):
    # if len(array) == 0:
    #     print('true')
    #     return True
    for i in array:
        if i == name:
            return False
    return True

def sendRequest(name):
    if checkEmpty(name, check):
        x = datetime.datetime.now()
        timestampStr = x.strftime("%A, %d-%B-%Y, %H:%M:%S %p")
        # print('Current Timestamp : ', timestampStr)
        # print(x)
        headers = {'content-type': 'application/json'}
        payload = {'employee': name, 'dateTime': timestampStr}
        r = requests.post('http://127.0.0.1:8001/api/check', data=json.dumps(payload), headers=headers)
        # print(r)
        if r.status_code == 200:
            check.append(name)
        print(r.text)
# loop over frames from the video file stream
while True:
    # grab the frame from the threaded video stream
    frame = vs.read()

    # convert the input frame from BGR to RGB then resize it to have
    # a width of 750px (to speedup processing)
    rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
    rgb = imutils.resize(frame, width=750)
    r = frame.shape[1] / float(rgb.shape[1])

    # detect the (x, y)-coordinates of the bounding boxes
    # corresponding to each face in the input frame, then compute
    # the facial embeddings for each face
    boxes = face_recognition.face_locations(rgb,
                                            model=args["detection_method"])
    encodings = face_recognition.face_encodings(rgb, boxes)
    names = []

    # loop over the facial embeddings
    for encoding in encodings:
        # attempt to match each face in the input image to our known
        # encodings
        matches = face_recognition.compare_faces(data["encodings"],
                                                 encoding)
        #use the known face with the smallest distance to the new face
        face_distances = face_recognition.face_distance(data["encodings"], encoding)
        best_match_index = np.argmin(face_distances)
        name = "Unknown"
        best_name = data['names'][best_match_index]
        maxCount = 0
        for name in data["names"]:
            if name == best_name:
                maxCount += 1
        # print('max counts: ', maxCount)
        best_acuracy = 1 - face_distances[best_match_index]
        # print("acuracy: ", face_distances)
        # print("matches: ", matches)
        # print("best index: ", best_match_index, ' is ', best_name)
        # check to see if we have found a match
        if True in matches:
            # find the indexes of all matched faces then initialize a
            # dictionary to count the total number of times each face
            # was matched
            matchedIdxs = [i for (i, b) in enumerate(matches) if b]
            # print("matchedIdxs: ", matchedIdxs)

            counts = {}

            # loop over the matched indexes and maintain a count for
            # each recognized face face
            for i in matchedIdxs:
                name = data["names"][i]
                counts[name] = counts.get(name, 0) + 1
            # print("counts: ", counts[best_name], ' is ', best_name)
            # determine the recognized face with the largest number
            # of votes (note: in the event of an unlikely tie Python
            # will select first entry in the dictionary)
            if (counts[best_name] == maxCount and matches[best_match_index] ):
                name = "{}: {:.2f}%".format(best_name, best_acuracy * 100)
                sendRequest(best_name)
                # name = best_name
            else:
                name = "Unknown"
            # print('name: ', name)
            # print("\n\n")
        # update the list of names
        names.append(name)

    # loop over the recognized faces
    for ((top, right, bottom, left), name) in zip(boxes, names):
        # rescale the face coordinates
        top = int(top * r)
        right = int(right * r)
        bottom = int(bottom * r)
        left = int(left * r)
        # draw the predicted face name on the image
        cv2.rectangle(frame, (left, top), (right, bottom), (0, 255, 0), 2)
        y = top - 15 if top - 15 > 15 else top + 15
        cv2.putText(frame, name, (left, y), cv2.FONT_HERSHEY_SIMPLEX, 0.75, (0, 255, 0), 2)

    # if the video writer is None *AND* we are supposed to write
    # the output video to disk initialize the writer
    if writer is None and args["output"] is not None:
        fourcc = cv2.VideoWriter_fourcc(*"MJPG")
        writer = cv2.VideoWriter(args["output"], fourcc, 20,
                                     (frame.shape[1], frame.shape[0]), True)

    # if the writer is not None, write the frame with recognized
    # faces to disk
    if writer is not None:
        writer.write(frame)

    # check to see if we are supposed to display the output frame to
    # check time and reset list
    x = datetime.datetime.now()
    if int(x.strftime("%S")) % 10 == 0 and int(x.strftime("%f")) > 800000:
        print(x)
        check = []

    # the screen
    if args["display"] > 0:
        cv2.imshow("Frame", frame)
        key = cv2.waitKey(1) & 0xFF

        # if the `q` key was pressed, break from the loop
        if key == ord("q"):
            break

# do a bit of cleanup
cv2.destroyAllWindows()
vs.stop()

# check to see if the video writer point needs to be released
if writer is not None:
    writer.release()
