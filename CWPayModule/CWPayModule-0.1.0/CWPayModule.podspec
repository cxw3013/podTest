Pod::Spec.new do |s|
  s.name = "CWPayModule"
  s.version = "0.1.0"
  s.summary = "A short description of CWPayModule."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"cxw"=>"cxw3013@163.com"}
  s.homepage = "https://github.com/cxw3013"
  s.description = "TODO: Add long description of the pod here."
  s.frameworks = "UIKit"
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/CWPayModule.framework'
end
