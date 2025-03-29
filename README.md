# OpenCV-Dynamic-Framework

This is a prebuilt OpenCV XCFramework for iOS. It is built as a dynamic link library and can also be used as a dependency of a Pod. Supports M1 and x86 simulator, and iOS devices.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

OpenCV-Dynamic-Framework is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'OpenCV-Dynamic-Framework'
```

## Used as a dependency

In your pod spec file, add the following line:

```ruby
spec.dependency 'OpenCV-Dynamic-Framework'
```

## Reference

[How to build OpenCV XCFramework](BUILD.md)
