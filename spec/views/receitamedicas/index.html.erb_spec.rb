require 'spec_helper'

describe "receitamedicas/index" do
  before(:each) do
    assign(:receitamedicas, [
      stub_model(Receitamedica,
        :nomeMedicamento => "Nome Medicamento",
        :data => "Data",
        :atendimento => nil
      ),
      stub_model(Receitamedica,
        :nomeMedicamento => "Nome Medicamento",
        :data => "Data",
        :atendimento => nil
      )
    ])
  end

  it "renders a list of receitamedicas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome Medicamento".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
