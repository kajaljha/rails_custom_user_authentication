require 'spec_helper'

describe "homes/new" do
  before(:each) do
    assign(:home, stub_model(Home,
      :name => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new home form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => homes_path, :method => "post" do
      assert_select "input#home_name", :name => "home[name]"
      assert_select "input#home_email", :name => "home[email]"
    end
  end
end
