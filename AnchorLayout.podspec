Pod::Spec.new do |spec|

  spec.name         = "AnchorLayout"
  spec.version      = "0.0.1"
  spec.summary      = "UIKit quick auto layout using anchor"

  spec.description  = <<-DESC
This kit helps you quick layout views using anchor
                   DESC

  spec.homepage     = "https://github.com/yuan356/AnchorLayout"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author       = { "will" => "willchen356@gmail.com" }

  spec.platform     = :ios, "11.0"
  spec.swift_version = "5"
  spec.source       = { :git => "https://github.com/yuan356/AnchorLayout.git", :tag => "#{spec.version}" }
  spec.source_files  = "AnchorLayout/**/*.{h,m,swift}"


end
