require 'spec_helper'

describe "UserPages" do

	subject { page }

	describe "Signup page" do

		before { visit signup_path }

		it { should have_selector("h1", text: "Sign up")}
		it { should have_selector("title", text: full_title('sign_up'))}

	end



	describe "Profile Page" do
		let(:user) { FactoryGirl.create(:user) }
		before { visit user_path(user) }

		it { should have_selector('h1', text: user.name)}
		it { should have_selector('title', text: user.name)}

	end

end
