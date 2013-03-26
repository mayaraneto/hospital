require 'spec_helper'

describe "medicos/show" do
  before(:each) do
    @medico = assign(:medico, stub_model(Medico,
      :nome => "Nome",
      :cpf => "Cpf",
      :endereco => "Endereco",
      :telefone => "Telefone",
      :crm => "Crm",
      :especialidade => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Cpf/)
    rendered.should match(/Endereco/)
    rendered.should match(/Telefone/)
    rendered.should match(/Crm/)
    rendered.should match(//)
  end
end
