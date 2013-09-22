require 'spec_helper'

describe PagesController do
  render_views
  
  describe 'GET request' do
    context 'home' do
      it 'should be successful' do
        get :home
        response.should be_successful
      end

      it 'should have the correct title' do
        get :home
        response.should have_selector('title', :content => 'Home')
      end
    end
  end
end
