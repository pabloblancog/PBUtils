Pod::Spec.new do |spec|
  spec.name         = "PBUtils"
  spec.version      = "0.0.4"
  spec.summary      = "Swift utilities"
  spec.description  = "Swift utilities for your project"
  spec.homepage     = "https://github.com/pabloblancog/PBUtils"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "pabloblancog" => "pabloblancogonzalez@gmail.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = "5.0"
  spec.source       = { :git => "https://github.com/pabloblancog/PBUtils.git", :tag => "#{spec.version}" }
  spec.source_files  = "PBUtils/PBUtils/**/*.{swift}"
end
