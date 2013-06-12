require_dependency "zekom/application_controller"

module Zekom
  class ZekomController < ApplicationController
    def about
    end

    def allow_cookies
    	cookies[:allow_cookies] = true
    	go_to = params[:current_url] ? params[:current_url] : "/"
    	redirect_to(go_to)
    end

    def cancel_permission
      cookies[:allow_cookies] = nil
      go_to = params[:current_url] ? params[:current_url] : "/"
      redirect_to(go_to)
    end

  end
end
