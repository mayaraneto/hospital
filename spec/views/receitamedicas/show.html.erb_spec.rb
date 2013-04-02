require 'spec_helper'

describe "receitamedicas/show" do
  before(:each) do
    @receitamedica = assign(:receitamedica, stub_model(Receitamedica,
      :nomeMedicamento => "Nome Medicamento",
      :data => "Data",
      :atendimento => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome Medicamento/)
    rendered.should match(/Data/)
    rendered.should match(//)
  end
end
