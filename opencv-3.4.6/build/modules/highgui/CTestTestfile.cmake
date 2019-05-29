# CMake generated Testfile for 
# Source directory: /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/highgui
# Build directory: /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/highgui
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_highgui "/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/bin/opencv_test_highgui" "--gtest_output=xml:opencv_test_highgui.xml")
set_tests_properties(opencv_test_highgui PROPERTIES  LABELS "Main;opencv_highgui;Accuracy" WORKING_DIRECTORY "/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/cmake/OpenCVUtils.cmake;1555;add_test;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/cmake/OpenCVModule.cmake;1261;ocv_add_test_from_target;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/highgui/CMakeLists.txt;165;ocv_add_accuracy_tests;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/highgui/CMakeLists.txt;0;")
