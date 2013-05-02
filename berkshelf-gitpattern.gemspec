Gem::Specification.new do |s|
  s.name = "berkshelf-gitpattern"
  s.version = "0.1.0"
  s.authors = ["Brian Akins"]
  s.email = ["brian@akins.org"]
  s.summary = "Add git location based on pattern  to berkshelf"
  s.description = s.summary
  s.files = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
