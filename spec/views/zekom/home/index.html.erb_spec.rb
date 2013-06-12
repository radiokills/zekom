require 'spec_helper'

describe "home/index.html.erb", type: :feature do
  it "goes to home" do
    visit "/home/index"
  end

  it "should have cookies bar", type: :feature do
    visit '/home/index'
    page.should have_selector('.zekom-notification')
  end

  it "should have links", type: :feature do
    visit '/home/index'
    page.should have_selector('.zekom-more')
  end

  it "should have working links", type: :feature do
    visit '/home/index'
    click_on 'izvedeti'
  end

end


