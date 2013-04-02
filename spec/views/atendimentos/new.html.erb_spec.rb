require 'spec_helper'

describe "atendimentos/new" do
  before(:each) do
    assign(:atendimento, stub_model(Atendimento,
      :data => "MyString",
      :hora => "MyString",
      :medico => nil,
      :paciente => nil
    ).as_new_record)
  end

  it "renders new atendimento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => atendimentos_path, :method => "post" do
      assert_select "input#atendimento_data", :name => "atendimento[data]"
      assert_select "input#atendimento_hora", :name => "atendimento[hora]"
      assert_select "input#atendimento_medico", :name => "atendimento[medico]"
      assert_select "input#atendimento_paciente", :name => "atendimento[paciente]"
    end
  end
end
