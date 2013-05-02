require 'berkshelf'

module Berkshelf
  class GitPatternfLocation < GitLocation
    set_location_key :gitpattern
    def initialize(name, version_constraint, options = {})
      pattern = options[:gitpattern][:pattern]
      options[:git] = pattern.gsub(/\{NAME\}/, name)
      super
    end
  end
end
