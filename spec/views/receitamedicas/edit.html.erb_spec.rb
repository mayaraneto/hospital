require 'spec_helper'

describe "receitamedicas/edit" do
  before(:each) do
    @receitamedica = assign(:receitamedica, stub_model(Receitamedica,
      :nomeMedicamento => "MyString",
      :data => "MyString",
      :atendimento => nil
    ))
  end

  it "renders the edit receitamedica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => receitamedicas_path(@receitamedica), :method => "post" do
      assert_select "input#receitamedica_nomeMedicamento", :name => "receitamedica[nomeMedicamento]"
      assert_select "input#receitamedica_data", :name => "receitamedica[data]"
      assert_select "input#receitamedica_atendimento", :name => "receitamedica[atendimento]"
    end
  end
end
