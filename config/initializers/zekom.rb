#encoding: utf-8
Zekom::Kookie.load_kookies


# Add custom cookies like this:
# All fields are required
#
#Zekom::Kookie.add({
#  :id=>'uservoice',
#  :names=>'_uv, jv',
#  :expires=>'_uv: 30min, jv: 12 min',
#  :description=>'Ti piškotki se uporabljajo za podporo uservoice.' 
#  })

#Select cookies that you use
Zekom::Kookie.use_kookies = %w(httpool iprom)