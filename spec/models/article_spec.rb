require 'spec_helper'

describe Article do
  before(:each) do
    @attr = { :title => 'Foo Title', :author => 'Foo author', :summary => 'Foo summary', 
      :content => 'Foo content' }
  end

  it { should respond_to(:title) }
  it { should respond_to(:author) }
  it { should respond_to(:summary) }
  it { should respond_to(:content) }

  describe 'instantiation' do
    it 'should require a title' do
      no_title_article = Article.new(@attr.merge(:title => ''))
      no_title_article.should_not be_valid
    end

    it 'should require an author' do
      no_author_article = Article.new(@attr.merge(:author => ''))
      no_author_article.should_not be_valid
    end

    it 'should require a summary' do
      no_summary_article = Article.new(@attr.merge(:summary => ''))
      no_summary_article.should_not be_valid
    end

    it 'should require content' do
      no_content_article = Article.new(@attr.merge(:content => ''))
      no_content_article.should_not be_valid
    end

    it 'should create a new instance given valid attributes' do
      Article.create!(@attr)
    end
  end
end
