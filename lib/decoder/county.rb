module Decoder
  class County
    include ::CommonMethods
    attr_accessor :name, :fips

    def initialize(args)
      self.name = args[:name]
      self.fips = args[:fips].to_i if args[:fips]
    end
  end
end