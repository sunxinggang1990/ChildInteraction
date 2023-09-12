# Uncomment the next line to define a global platform for your project

# platform :ios, '11.0'

post_install do |installer|
  installer.generated_projects.each do |project|
     project.targets.each do |target|
       target.build_configurations.each do |config|
         config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
         config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
         config.build_settings['VALID_ARCHS'] = 'arm64 arm64e armv7 armv7s x86_64 i386'
         config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'arm64'
        end
     end
  end
end

target 'ChildInteraction' do

pod 'Masonry'
pod 'IQKeyboardManager'
pod 'SDWebImage'
pod 'MJRefresh'
#pod 'MJExtension'
pod 'YYModel'
pod 'MBProgressHUD'
pod 'MMKV'
pod 'LYEmptyView'
pod 'IQDropDownTextField'
pod 'SZTextView'
pod 'UMCommon'
pod 'UMDevice'
pod 'AFNetworking', '~> 4.0'
pod 'GDTMobSDK'
pod 'SVProgressHUD'

end
