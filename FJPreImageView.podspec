#
# Be sure to run `pod lib lint FJPreImageView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FJPreImageView'
  s.version          = '0.0.4'
  s.summary          = '一个简单的预览图片控件'

  s.description      = <<-DESC
  TODO: 预览图片，支持网络图片和本地图片的预览，定点放大和缩小，手动放大和缩小,长按手势的回调
                       DESC

  s.homepage         = 'https://github.com/Fhvksou/FJPreImageView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Fhvksou' => '497001857@qq.com' }
  s.source           = { :git => 'https://github.com/Fhvksou/FJPreImageView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'FJPreImageView/Classes/**/*'
  
  s.dependency 'SDWebImage'
  
end
