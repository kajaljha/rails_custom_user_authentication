require 'spec_helper'

describe "homes/show" do
  before(:each) do
    @home = assign(:home, stub_model(Home,
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
  end
end