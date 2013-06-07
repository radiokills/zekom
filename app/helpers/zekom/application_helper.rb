module Zekom
  module ApplicationHelper
  	def zekom_notification
  		render partial: "zekom/zekom/notification_bar"
  	end

    def cookie_list
      render partial: "zekom/zekom/cookie_list"
    end

    def cookies_allowed?
      cookies[:allow_cookies] ? true : false
    end
  end
end
