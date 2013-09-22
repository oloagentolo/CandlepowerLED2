FactoryGirl.define do
  factory :article do |a|
    a.title            'Sample Foo Article'
    a.author           'John Doe'
    a.summary          'Lorum ipsum summary'
    a.content          'Lorum ipsum content article'
  end
end
