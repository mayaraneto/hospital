require 'spec_helper'

describe "especialidades/show" do
  before(:each) do
    @especialidade = assign(:especialidade, stub_model(Especialidade,
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
  end
end
