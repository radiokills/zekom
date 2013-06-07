module Zekom
	class Kookie
		class << self
			attr_accessor :kookies, :use_kookies
			
      def load_kookies
				path = Zekom::Engine.root.join('app', 'data', 'cookie_list.yml')
				kookies = YAML::load(File.open(path))
        Zekom::Kookie.kookies=[]
        kookies.each do |k|
          Zekom::Kookie.kookies.push(k.symbolize_keys)
        end
			end

      def add(kookie)
        Zekom::Kookie.kookies.push(kookie)
      end	

      def active
        Zekom::Kookie.kookies.find_all{|k| Zekom::Kookie.use_kookies.include?(k[:id])}
      end
		
    end
	end
end