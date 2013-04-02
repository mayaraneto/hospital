# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :receitamedica do
    nomeMedicamento "MyString"
    data "MyString"
    atendimento nil
  end
end
