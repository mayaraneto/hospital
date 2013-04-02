# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :atendimento do
    data "MyString"
    hora "MyString"
    medico nil
    paciente nil
  end
end
