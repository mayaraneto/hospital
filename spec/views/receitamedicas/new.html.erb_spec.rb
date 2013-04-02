require 'spec_helper'

describe "receitamedicas/new" do
  before(:each) do
    assign(:receitamedica, stub_model(Receitamedica,
      :nomeMedicamento => "MyString",
      :data => "MyString",
      :atendimento => nil
    ).as_new_record)
  end

  it "renders new receitamedica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => receitamedicas_path, :method => "post" do
      assert_select "input#receitamedica_nomeMedicamento", :name => "receitamedica[nomeMedicamento]"
      assert_select "input#receitamedica_data", :name => "receitamedica[data]"
      assert_select "input#receitamedica_atendimento", :name => "receitamedica[atendimento]"
    end
  end
end
