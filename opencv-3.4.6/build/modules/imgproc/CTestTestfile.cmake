# CMake generated Testfile for 
# Source directory: /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/imgproc
# Build directory: /Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/modules/imgproc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_imgproc "/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/bin/opencv_test_imgproc" "--gtest_output=xml:opencv_test_imgproc.xml")
set_tests_properties(opencv_test_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Accuracy" WORKING_DIRECTORY "/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/cmake/OpenCVUtils.cmake;1555;add_test;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/cmake/OpenCVModule.cmake;1261;ocv_add_test_from_target;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/cmake/OpenCVModule.cmake;1066;ocv_add_accuracy_tests;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/imgproc/CMakeLists.txt;12;ocv_define_module;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/imgproc/CMakeLists.txt;0;")
add_test(opencv_perf_imgproc "/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/bin/opencv_perf_imgproc" "--gtest_output=xml:opencv_perf_imgproc.xml")
set_tests_properties(opencv_perf_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Performance" WORKING_DIRECTORY "/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/test-reports/performance" _BACKTRACE_TRIPLES "/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/cmake/OpenCVUtils.cmake;1555;add_test;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/cmake/OpenCVModule.cmake;1177;ocv_add_test_from_target;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/cmake/OpenCVModule.cmake;1067;ocv_add_perf_tests;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/imgproc/CMakeLists.txt;12;ocv_define_module;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/imgproc/CMakeLists.txt;0;")
add_test(opencv_sanity_imgproc "/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/bin/opencv_perf_imgproc" "--gtest_output=xml:opencv_perf_imgproc.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Sanity" WORKING_DIRECTORY "/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/build/test-reports/sanity" _BACKTRACE_TRIPLES "/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/cmake/OpenCVUtils.cmake;1555;add_test;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/cmake/OpenCVModule.cmake;1178;ocv_add_test_from_target;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/cmake/OpenCVModule.cmake;1067;ocv_add_perf_tests;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/imgproc/CMakeLists.txt;12;ocv_define_module;/Users/canqpham/Documents/work/xtek/ai/opencv-3.4.6/modules/imgproc/CMakeLists.txt;0;")
