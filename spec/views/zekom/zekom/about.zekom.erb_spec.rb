# encoding: UTF-8 
require 'spec_helper'

describe "zekom/zekom/about.html.erb", type: :feature do


  it 'should have description' do
    visit '/zekom/zekom/about'
    page.should have_content('Kaj so')
  end

  it 'should have list of cookies' do
    Zekom::Kookie.use_kookies = %w(adsense httpool iprom addthis)
    visit '/zekom/zekom/about'
    page.should have_selector('.zekom-cookie-list')
    page.should have_content('test_cookie')
  end

  it 'should display only selected cookies descriptions' do
    Zekom::Kookie.use_kookies = %w(adsense httpool iprom addthis moss)
    visit '/zekom/zekom/about'
    page.should have_content('MOSS')
    Zekom::Kookie.use_kookies = %w(adsense httpool iprom addthis)
    visit '/zekom/zekom/about'
    page.should_not have_content('MOSS')

  end

end