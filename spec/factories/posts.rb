FactoryGirl.define do
  factory :post do
    date Date.today
    rational "Some Rationale"
  end

  factory :second_post, class: "Post" do
    date Date.yesterday 
    rational "Some Rationale 2"
  end
end
