# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :paciente do
    nome "MyString"
    cpf "MyString"
    endereco "MyString"
    telefone "MyString"
    dataNascimento "MyString"
  end
end
