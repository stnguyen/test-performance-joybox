# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'joybox'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'demo-performance'
  app.interface_orientations = [:landscape_right]

  app.development do
    PROVISIONING_PROFILE_BASE_DIR = '/Users/stefan/Library/MobileDevice/Provisioning Profiles/'
    PROVISIONING_PROFILE_FILE_NAME = 'EEAFE07F-1EB1-40AA-8A07-A0892B4269A6'
    CODESIGN_CERTIFICATE = 'iPhone Developer: Alex Nguyen (5MAYDWZ9GP)'
    app.provisioning_profile = "#{PROVISIONING_PROFILE_BASE_DIR}#{PROVISIONING_PROFILE_FILE_NAME}.mobileprovision"
    app.codesign_certificate = CODESIGN_CERTIFICATE
    app.entitlements['get-task-allow'] = true
  end

  app.vendor_project('vendor/Mover/',
                     :static,
                     :cflags => " -I./cocos2d")
end
