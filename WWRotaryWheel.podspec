Pod::Spec.new do |s|

  s.name         				= "WWRotaryWheel"
  s.version      				= "0.1.0"
  s.summary      				= "WWRotaryWheel is a little rotary wheel. (一個圓形的滾輪)"
  s.homepage     				= "https://github.com/William-Weng/WWSegmentControl"
  s.license      				= { :type => "MIT", :file => "LICENSE" }
  s.author             			= { "翁禹斌(William.Weng)" => "linuxice0609@gmail.com" }
  s.platform 					= :ios, "10.0"
  s.ios.vendored_frameworks 	= "WWRotaryWheel.framework"
  s.source 						= { :git => "https://github.com/William-Weng/WWRotaryWheel.git", :tag => "#{s.version}" }
  s.frameworks 					= 'UIKit'
  
end
