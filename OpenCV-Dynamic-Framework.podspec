Pod::Spec.new do |spec|
  spec.name         = "OpenCV-Dynamic-Framework"
  spec.version      = "4.3.0-beta.2"
  spec.summary      = "OpenCV dynamic framework"
  spec.description  = "From https://github.com/opencv/opencv"
  spec.homepage     = "https://github.com/eddy-lau/OpenCV-Dynamic-Framework.git"
  spec.license      = { :type => '3-clause BSD', :file => 'LICENSE' } 
  spec.author       = "https://opencv.org/" 
  spec.platform     = :ios
  spec.ios.deployment_target = "11.1"
  spec.source       = { 
      :git => "https://github.com/eddy-lau/OpenCV-Dynamic-Framework.git", 
      :tag => "#{spec.version.to_s}" 
  }

  spec.prepare_command = <<-CMD
  ./extract.sh
  CMD

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  spec.source_files = "opencv2.framework/Headers/**/*{.h,.hpp}"
  spec.preserve_paths = "opencv2.framework"
  spec.vendored_frameworks = "opencv2.framework"
  spec.requires_arc = false
	spec.ios.frameworks = [
    "AssetsLibrary",
    "AVFoundation",
    "CoreGraphics",
    "CoreMedia",
    "CoreVideo",
    "Foundation",
    "QuartzCore",
    "UIKit"
	]

  spec.libraries = "c++"
  spec.pod_target_xcconfig = {
      "CLANG_CXX_LANGUAGE_STANDARD" => "c++17",
      "CLANG_CXX_LIBRARY" => "libc++",
  }
end
