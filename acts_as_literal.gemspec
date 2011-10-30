# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "acts_as_literal/version"

Gem::Specification.new do |s|
  s.name        = "acts_as_literal"
  s.version     = ActsAsLiteral::VERSION
  s.authors     = ["kp"]
  s.email       = ["kakkunpakkun@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Makes your model's to_param methods to return id with name.}
  s.description = %q{Changes the model's to_param method to return #{id}-#{name}. Though url would be changed like "model/1" to "model/1-name".}

  s.rubyforge_project = "acts_as_literal"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
