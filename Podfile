# Uncomment the next line to define a global platform for your project
# platform :ios, '11.0'

inhibit_all_warnings!
use_frameworks!

def shared_libraries

  pod 'SwiftGen'
  pod 'Resolver'
  pod 'Firebase/Core'
  pod 'Firebase/Analytics'
  pod 'Firebase/Crashlytics'
end

target 'amiibo-swift' do
  
  shared_libraries
end

#Unit tests
target 'amiibo-swiftTests' do

  shared_libraries
end

#UI tests
target 'amiibo-swiftUITests' do

  shared_libraries
end

target 'Services' do

  shared_libraries

  pod 'Moya'
  pod 'Alamofire'
end
