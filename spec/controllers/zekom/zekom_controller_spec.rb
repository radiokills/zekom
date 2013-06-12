require 'spec_helper'

describe Zekom::ZekomController do
  describe "GET #allow_cookies" do
    
    it 'visit an about page' do
      get :about
    end

    it 'gets cookie' do
      get :allow_cookies
      cookies[:allow_cookies].should be(true)
    end

    it 'deletes cookie' do
      get :cancel_permission
      cookies[:allow_cookies].should be(nil)
    end

  end
end