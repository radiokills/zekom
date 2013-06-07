module Zekom
  class Config
    class << self
      attr_accessor :about_url
      Zekom::Config.about_url="/zekom/zekom/about"
    end
  end
end