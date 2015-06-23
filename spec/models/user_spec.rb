require 'rails_helper'

RSpec.describe User, type: :model do
  def setup
    @user = User.new(given_name: 'Paul', family_name: 'Hutchinson', email: 'rando@rando.com', username: 'champion123')
  end

  it "should be a valid user" do
    expect @user.valid?
  end

end
