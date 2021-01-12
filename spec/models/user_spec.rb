require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    it 'should create a valid user' do
      user = User.create(
        name: "Josh",
        email: "Josh@test.com",
        password: "test",
        password_confirmation: "test"
      )
      expect(user).to be_valid
    end

    it 'should have a matching password and password confirmation' do
      user = User.create(
        name: "Josh",
        email: "Josh@test.com",
        password: "test",
        password_confirmation: "wrong"
      )
      expect(user.password).to_not be_equal(user.password_confirmation)
    end

    it 'should have a password and password confirmation' do
      user = User.create(
        name: "Josh",
        email: "Josh@test.com",
        password: "test",
        password_confirmation: nil
      )
      expect(user).to_not be_valid
    end

    it 'should not save without an unique email' do
      @user = User.create(
        name: "Josh",
        email: "Josh@TEST.com ",
        password_digest: "test"
      )
      @user2 = User.create(
        name: "Josh",
        email: "Josh@test.COM",
        password_digest: "test"
      )
    expect(@user2).to_not be_valid
    end

    it 'should have a name to be a valid user' do
      user = User.create(
        name: nil,
        email: "Josh@test.com",
        password: "test",
        password_confirmation: "test"
      )
      expect(user).to_not be_valid
    end

    it 'should have an email to be a valid user' do
      user = User.create(
        name: "Josh",
        email: nil,
        password: "test",
        password_confirmation: "test"
      )
      expect(user).to_not be_valid
    end

    it 'should have a password with a minimum length of 3' do
      user = User.create(
        name: "Josh",
        email: "Josh@test.com",
        password: "t",
        password_confirmation: "t"
      )
      expect(user).to_not be_valid
    end
  end

  describe '.authenticate_with_credentials' do

    it 'should authenticate with email and password are valid' do
      user = User.create(
        name: "Josh",
        email: "Josh@test.com",
        password: "test",
        password_confirmation: "test"
      )
      authenticate = User.authenticate_with_credentials(user.email, user.password)
      expect(authenticate).to eq(user)
    end
  end
end 