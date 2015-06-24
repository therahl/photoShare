require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create(password: '123123', password_confirmation: '123123', given_name: 'Paul', family_name: 'Hutchinson', email: 'rando@rando.com', username: 'champion123')
  end

  it "should be a valid user" do

    expect(@user.valid?).to eq(true)
  end

  it "should require given_name" do

    @user.given_name = ''
    expect(@user.valid?).to eq(false)
  end

  it "should require family_name" do

    @user.family_name = ''
    expect(@user.valid?).to eq(false)
  end

  it "should require email" do

    @user.email = ''
    expect(@user.valid?).to eq(false)
  end

  it "should require username" do

    @user.username = ''
    expect(@user.valid?).to eq(false)
  end

  it "should be valid email" do
    valid_emails = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]

    valid_emails.each do |email|
      @user.email = email
      @user.save
      expect(@user.valid?).to eq true
    end
  end

  it 'should not be duplicate email' do

    dup_user = @user.dup
    dup_user.email = @user.email.upcase
    expect(dup_user.valid?).to eq false
  end

  it 'password should have minimum length' do

    @user.password = @user.password_confirmation = 'aB1'
    expect(@user.valid?).to eq false
  end

  it 'password should not be blank' do

    @user.password = @user.password_confirmation = " " * 6
    expect(@user.valid?).to eq false
  end

  it { should respond_to(:password_confirmation) }
  it { should respond_to(:remember_token) }
  it { should respond_to(:authenticate) }

  describe 'remember token' do
    it { expect(@user.remember_token).not_to be_blank }
  end


end
