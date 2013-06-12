Zekom::Engine.routes.draw do
  #get "home/index"

  mount Zekom::Engine => '/zekom'
  get "zekom/about"
  get "zekom/allow_cookies"
end
