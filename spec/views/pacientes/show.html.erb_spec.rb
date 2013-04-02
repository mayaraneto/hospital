require 'spec_helper'

describe "pacientes/show" do
  before(:each) do
    @paciente = assign(:paciente, stub_model(Paciente,
      :nome => "Nome",
      :cpf => "Cpf",
      :endereco => "Endereco",
      :telefone => "Telefone",
      :dataNascimento => "Data Nascimento"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Cpf/)
    rendered.should match(/Endereco/)
    rendered.should match(/Telefone/)
    rendered.should match(/Data Nascimento/)
  end
end
