require 'spec_helper'

describe 'Authentication' do
  describe 'signin' do
    before { visit login_path }

    describe 'with INVALID information' do
      before { click_button 'Save Session' }

      it { should have_title('Login') }
    end

    describe 'with valid information' do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in 'Username' with: user.username.upcase
        fill_in 'Password' with: user.password
        click_button 'Save Session'
      end

      it { should have_title(user.name) }
      it { should have_link('Profile', href: user_path(user)) }
      it { should have_link('Logout', href: logout_path) }
      it { should_not have_link('Login', href: login_path) }

    end


  end


end
