require 'test_helper'

class CountyTest < Test::Unit::TestCase

  should "include 'Common Methods' module" do
    assert_contains Decoder::County.included_modules, CommonMethods
  end

  context "English" do
    setup do
      Decoder.i18n = :en
    end

    context "Getters" do
      setup do
        @county = Decoder::County.new(:name => "Allegany", :fips => "001")
      end

      should "return 'Allegany' for #name" do
        assert_equal "Allegany", @county.name
      end

    end

    context "FIPS states from a state" do
      setup do
        @country = Decoder::Countries["US"]
        @state   = @country["MT"]
        @counties = @state.counties
      end

      should "properly assign the name" do
        assert_equal "Montana", @state.name
      end

      should "properly assign the fips" do
        assert_equal 30, @state.fips
      end

    end
  end

end