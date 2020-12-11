FactoryBot.define do
  factory :todo do
    sequence(:title) { |n| "title_#{n}" }
    is_done { false }
  end
end
