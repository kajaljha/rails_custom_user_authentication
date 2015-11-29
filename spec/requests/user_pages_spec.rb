require 'spec_helper'
describe User do
before do
@user = User.new(name: "Example User", email: "user@example.com")
end
subject { @user }
it { should respond_to(:name) }
it { should respond_to(:email) }
it { should be_valid }
describe "when name is not present" do
before { @user.name = " " }
it { should_not bevalid }
end
describe "edit" do
let(:user) { FactoryGirl.create(:user) }
before { visit edit_user_path(user) }
describe "page" do

it { should have_selector('h1',text: "Update your profile") }
it { should have_selector('title', text: "Edit user") }
it { should have_link('change', href: 'http://gravatar.com/emails') }
end
describe "with invalid information" do
before { click_button "Save changes" }
it { should have_content('error') }
end
end
end