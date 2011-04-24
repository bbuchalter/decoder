module Decoder
  class State
    include ::CommonMethods
    attr_accessor :code, :name, :fips

    def initialize(args)
      self.code = args[:code].to_s
      self.name = args[:name]
      self.fips = args[:fips].to_i if args[:fips]
      self.counties = Decoder.locale[Decoder.i18n]["US"][:states][self.code][:counties]
    end

    def counties
      @counties
    end

    def counties=(_counties)
      @counties = _counties
    end
  end
end