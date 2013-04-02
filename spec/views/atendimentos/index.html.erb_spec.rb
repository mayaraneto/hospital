require 'spec_helper'

describe "atendimentos/index" do
  before(:each) do
    assign(:atendimentos, [
      stub_model(Atendimento,
        :data => "Data",
        :hora => "Hora",
        :medico => nil,
        :paciente => nil
      ),
      stub_model(Atendimento,
        :data => "Data",
        :hora => "Hora",
        :medico => nil,
        :paciente => nil
      )
    ])
  end

  it "renders a list of atendimentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
