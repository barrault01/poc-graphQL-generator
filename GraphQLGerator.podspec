Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = "11.0"
  s.name = "GraphQLGerator"
  s.summary = "GraphQLGerator"
  s.requires_arc = true
  s.author = "Antoine Barrault"
  s.version = "0.1.0"

  s.homepage = "http://github.com/barrault01/poc-graphQL-generator.git"

  s.source = { :git => "git@github.com:barrault01/poc-graphQL-generator.git", :tag => s.version.to_s }

  s.framework = "UIKit"

  s.source_files = "API.swift"

  s.dependency "Apollo"
end
