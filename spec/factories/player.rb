FactoryGirl.define do
  factory :player do
    sequence(:name) { |num| "player_#{num}"}
    email { |p| "#{p.name}@3months.com" }
    confirmed_at Time.now
    password 'password'
    password_confirmation 'password'
  end

  factory :player_new, parent: :player do
    confirmed_at nil
    password nil
    password_confirmation nil
  end
end
