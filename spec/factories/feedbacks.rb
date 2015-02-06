FactoryGirl.define do
  factory :feedback, class: Feedy::Feedback do
    subject 'Test subject'
    body 'Test body'
    author_id 1
    author_type 'User'
  end
end
