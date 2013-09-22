require 'spec_helper'

describe ArticlesController do
  render_views
  
  describe 'GET request' do
    context 'index' do
      it 'should be successful' do
        get :index
        response.should be_success
      end

      it "should have 'All CandlepowerLED news' as the title" do
        get :index
        response.should have_selector('title', :content => 'All CandlepowerLED news')
      end
    end

    context 'show' do
      before(:each) do
        @article = FactoryGirl.create(:article)
      end

      it 'should be successful' do
        get :show, :id => @article
        response.should be_success
      end

      it "should have the article's title as the page title" do
        get :show, :id => @article
        response.should have_selector('title', :content => @article.title)
      end
    end
  end
end
