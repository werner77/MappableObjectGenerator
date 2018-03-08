source 'https://github.com/werner77/BMPodSpecs.git'
source 'https://github.com/CocoaPods/Specs.git'

project 'MappableObjectGenerator.xcodeproj'
workspace 'MappableObjectGenerator.xcworkspace'
platform :osx, '10.9'

inhibit_all_warnings!

def common_pods
    pod 'BMCommons/BMCore', :path => 'Modules/BMCommons'
    pod 'BMCommons/BMXML', :path => 'Modules/BMCommons'
    pod 'BMCommons/BMRestKit', :path => 'Modules/BMCommons'
end

def test_pods
    pod 'KiteJSONValidator', :path => 'Modules/KiteJSONValidator'
end

target 'MappableObjectGenerator' do
    common_pods
end

target 'MappableObjectGeneratorTests' do
    common_pods
    test_pods
end
