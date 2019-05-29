import face_recognition
import requests
# import json
import cv2
import numpy as np

import json


# This is a demo of running face recognition on live video from your webcam. It's a little more complicated than the
# other example, but it includes some basic performance tweaks to make things run a lot faster:
#   1. Process each video frame at 1/4 resolution (though still display it at full resolution)
#   2. Only detect faces in every other frame of video.

# PLEASE NOTE: This example requires OpenCV (the `cv2` library) to be installed only to read from your webcam.
# OpenCV is *not* required to use the face_recognition library. It's only required if you want to run this
# specific demo. If you have trouble installing it, try any of the other demos that don't require it instead.

# Get a reference to webcam #0 (the default one)
video_capture = cv2.VideoCapture(0)


# Load a second sample picture and learn how to recognize it.
canqpham_image = face_recognition.load_image_file("canqpham1.jpg")
canqpham_face_encoding = face_recognition.face_encodings(canqpham_image)[0]

# Load a second sample picture and learn how to recognize it.
giabao_image = face_recognition.load_image_file("giabao.jpg")
giabao_face_encoding = face_recognition.face_encodings(giabao_image)[0]

# Load a second sample picture and learn how to recognize it.
locdev_image = face_recognition.load_image_file("locdev.jpg")
locdev_face_encoding = face_recognition.face_encodings(locdev_image)[0]

# Create arrays of known face encodings and their names
known_face_encodings = [
    canqpham_face_encoding,
    giabao_face_encoding,
    locdev_face_encoding
]
known_face_names = [
    "Canqpham",
    "Gia Bao",
    "Loc Dev"
]

check = [
    "false",
    "false",
    "false",
]

# Initialize some variables
face_locations = []
face_encodings = []
face_names = []
face_accuracy = 0
face_check_id = 0
process_this_frame = True


def sendRequest(face_check_id):
    if check[face_check_id] == "false":
        headers = {'content-type': 'application/json'}
        payload = {'employee': known_face_names[face_check_id]}
        r = requests.post('http://127.0.0.1:8001/api/check', data=json.dumps(payload), headers=headers)
        # print(r)
        if r.status_code == 200:
            check[face_check_id] = "true"
        print(r.text)

while True:
    # Grab a single frame of video
    ret, frame = video_capture.read()

    # Resize frame of video to 1/4 size for faster face recognition processing
    small_frame = cv2.resize(frame, (0, 0), fx=0.25, fy=0.25)

    # Convert the image from BGR color (which OpenCV uses) to RGB color (which face_recognition uses)
    rgb_small_frame = small_frame[:, :, ::-1]

    # Only process every other frame of video to save time
    if process_this_frame:
        # Find all the faces and face encodings in the current frame of video
        face_locations = face_recognition.face_locations(rgb_small_frame)
        face_encodings = face_recognition.face_encodings(rgb_small_frame, face_locations)

        face_names = []
        for face_encoding in face_encodings:
            # See if the face is a match for the known face(s)
            matches = face_recognition.compare_faces(known_face_encodings, face_encoding)
            name = "Unknown"

            # # If a match was found in known_face_encodings, just use the first one.
            # if True in matches:
            #     first_match_index = matches.index(True)
            #     name = known_face_names[first_match_index]

            # Or instead, use the known face with the smallest distance to the new face
            face_distances = face_recognition.face_distance(known_face_encodings, face_encoding)
            best_match_index = np.argmin(face_distances)
            #face_check_id = best_match_index

            #print(face_distances[best_match_index])
            if matches[best_match_index]:
                name = known_face_names[best_match_index]
                sendRequest(best_match_index)

            face_names.append(name)
            face_accuracy = face_distances[best_match_index]

    process_this_frame = not process_this_frame

    # Display the results
    for (top, right, bottom, left), name in zip(face_locations, face_names):
        # Scale back up face locations since the frame we detected in was scaled to 1/4 size
        top *= 4
        right *= 4
        bottom *= 4
        left *= 4

        # Draw a box around the face
        cv2.rectangle(frame, (left, top), (right, bottom), (0, 0, 255), 2)

        # Draw a label with a name below the face
        cv2.rectangle(frame, (left, bottom - 35), (right, bottom), (0, 0, 255), cv2.FILLED)
        font = cv2.FONT_HERSHEY_DUPLEX
        label = "{}: {:.2f}%".format(name, face_accuracy * 100)
        cv2.putText(frame, label, (left + 6, bottom - 6), font, 1.0, (255, 255, 255), 1)

    # Display the resulting image
    cv2.imshow('Video', frame)

    # Hit 'q' on the keyboard to quit!
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# Release handle to the webcam
video_capture.release()
cv2.destroyAllWindows()
