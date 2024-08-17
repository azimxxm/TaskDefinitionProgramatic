# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'TaskDefinition' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
      installer.generated_projects.each do |project|
        project.targets.each do |target|
          target.build_configurations.each do |config|
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
          end
        end
      end
    end
  end

  # Pods for TaskDefinition
  pod 'SnapKit'
  pod 'Alamofire'
  pod 'SwiftyJSON'

end
