require 'berkshelf'

module Berkshelf
  class GitPatternfLocation < GitLocation
    set_location_key :gitpattern
    def initialize(name, version_constraint, options = {})
      pattern = options[:gitpattern][:pattern]
      options[:git] = pattern.gsub(/\{NAME\}/, name)
      @repo_identifier = options.delete(:gitpattern) || name
      if version_constraint.to_s.match(/^= \d/)
        tag = version_constraint.to_s.split[1]
        options[:branch] = options[:branch] || options[:ref] || options[:tag] || tag
      end
      super
    end
  end
end
