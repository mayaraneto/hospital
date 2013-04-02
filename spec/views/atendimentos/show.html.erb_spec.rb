require 'spec_helper'

describe "atendimentos/show" do
  before(:each) do
    @atendimento = assign(:atendimento, stub_model(Atendimento,
      :data => "Data",
      :hora => "Hora",
      :medico => nil,
      :paciente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    rendered.should match(/Hora/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
