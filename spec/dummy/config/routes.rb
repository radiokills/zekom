Rails.application.routes.draw do

  mount Zekom::Engine => '/zekom'

  get "home/index"
  mount Zekom::Engine => "/zekom"
  match "/zekom/:controller/:action"
end
