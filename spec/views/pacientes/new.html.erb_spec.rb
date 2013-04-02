require 'spec_helper'

describe "pacientes/new" do
  before(:each) do
    assign(:paciente, stub_model(Paciente,
      :nome => "MyString",
      :cpf => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :dataNascimento => "MyString"
    ).as_new_record)
  end

  it "renders new paciente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pacientes_path, :method => "post" do
      assert_select "input#paciente_nome", :name => "paciente[nome]"
      assert_select "input#paciente_cpf", :name => "paciente[cpf]"
      assert_select "input#paciente_endereco", :name => "paciente[endereco]"
      assert_select "input#paciente_telefone", :name => "paciente[telefone]"
      assert_select "input#paciente_dataNascimento", :name => "paciente[dataNascimento]"
    end
  end
end
