import express from 'express';
import Excel from 'exceljs'
import path from 'path';
// import cookieParser from 'cookie-parser';
// import logger from 'morgan';
// import cors from 'cors';
import http from 'http';
import socket from 'socket.io';
import indexRouter from './routes';
import { ServerConfig } from './config';
import cv from './node-opencv/lib/opencv';
var fs = require('fs');
// Config express
var app = express();
app.disable('x-powered-by');
// app.use(logger('dev'));
app.use(express.json()); 
app.use(express.urlencoded({ extended: false }));  
// app.use(cookieParser()); 
// app.use(cors());

//Config passport
// require('./passport.init');

//Config public folder
// app.use(express.static(path.join(__dirname, '/public')));
// app.get("/api/media/", express.static(path.join(__dirname, "/media")));

const server = http.createServer(app);
const io = socket(server)

app.get('/', (req, res) => {
 res.sendFile(path.join(__dirname, 'index.html'))
})
// app.use(io)

// const wCap = new cv.VideoCapture(0) 

// // setInterval(() => {
// //   const frame = wCap.read((err, im) => {
// //     const image = cv.imdecode('.jpg', im).toString('base64')
// //   })
// //   io.emit('image', image)
// // }, 1000)  

try {
  var camera = new cv.VideoStream(0);
  // var window = new cv.NamedWindow('Video', 0)
  setInterval(function() {
    let frame = '' ;
    camera.read(function(err, im) {
      if (err) throw err;
      // im.resize(640, 360);
      // let buf = mat.toBuffer({ext: ".jpg", jpegQuality: 100});
      // const image = cv.('.jpg', im).toString('base64')
      // io.emit('images', im.getData().toString('base64'))
        console.log(im.getData() + '\n\n')
      // } , 1000)
      // im.getData().toString('base64')
      //   window.show(im);
      // const bitmap = fs.read(im)
      // console.log(image)
      // if (im.size()[0] > 0 && im.size()[1] > 0){
        // }
        // window.blockingWaitKey(0, 50);
      });
      // console.log(test)
      // const image = new Buffer.from(im).toString('base64'); //cv.imdecode('.jpg', im).toString('base64')
      // io.emit('images', frame)
  }, 1000);
} catch (e){
  console.log("Couldn't start camera:", e)
}



// var workbook = new Excel.Workbook();
// workbook.creator = 'Me';
// workbook.lastModifiedBy = 'Her';
// workbook.created = new Date(1985, 8, 30);
// workbook.modified = new Date();
// workbook.lastPrinted = new Date(2016, 9, 27);
// var sheet = workbook.addWorksheet('My Sheet');

app.use('/api', indexRouter);

// const initExpress = async () => {
  server.listen(ServerConfig.PORT, (error) => {
    if (error) console.log(error)
    console.log(`[API RUNNING]: http://${ServerConfig.IP}:${ServerConfig.PORT}`);
  });
// };

// export default initExpress;
