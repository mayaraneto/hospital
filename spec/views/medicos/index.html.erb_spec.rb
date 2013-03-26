require 'spec_helper'

describe "medicos/index" do
  before(:each) do
    assign(:medicos, [
      stub_model(Medico,
        :nome => "Nome",
        :cpf => "Cpf",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :crm => "Crm",
        :especialidade => nil
      ),
      stub_model(Medico,
        :nome => "Nome",
        :cpf => "Cpf",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :crm => "Crm",
        :especialidade => nil
      )
    ])
  end

  it "renders a list of medicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Crm".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
