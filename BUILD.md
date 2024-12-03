# How to build

## Build Environment

The instructions is successfully tested on this build environment:

* Apple M4 Pro
* macOS 15.1.1 (24B2091)
* Xcode 16.1

(Build time 26m 3.86s)

## Instructions

1. Clone the repository

   ```console
   git clone --no-checkout git@github.com:opencv/opencv.git
   ```

2. Checkout the specific commit

   ```console
   cd opencv
   git checkout 96dab6ba7181d2de71e014e750354b7111d10dac
   ```

3. Create build directory

   ```console
   cd ..
   mkdir build-opencv
   ```

4. Build

   ```console
   python3 ../opencv/platforms/apple/build_xcframework.py \
     --out . \
     --without=video \
     --iphoneos_archs=arm64 \
     --iphonesimulator_archs=arm64,x86_64 \
     --iphoneos_deployment_target=17 \
     --disable-bitcode \
     --build_only_specified_archs
   ```

5. Zip and Split

   ```console
   zip -r opencv2.xcframework.zip opencv2.xcframework
   split -b 50000000 -d opencv2.xcframework.zip opencv2.xcframework.zip.
   ```

## Reference

* [Make OpenCV XCFramework](https://gist.github.com/humblehacker/6a2e38072b0e237de20ba6d1f2efc80f)
