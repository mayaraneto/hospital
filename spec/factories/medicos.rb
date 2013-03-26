# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :medico do
    nome "MyString"
    cpf "MyString"
    endereco "MyString"
    telefone "MyString"
    crm "MyString"
    especialidade nil
  end
end
