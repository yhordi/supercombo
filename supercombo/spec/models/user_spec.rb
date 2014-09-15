require 'spec_helper'

describe User do
  context "validations" do
    before :each do
      @user = User.new
      @user.username = "MrA'sBaseball"
      @user.password = "IamMrBaseba11"
    end
    context "username" do
      it { should validate_presence_of (:username) }
      it { should validate_uniqueness_of (:username) }
    end
    context "password" do
      it { should validate_presence_of (:password) }
      # it { should ensure_length_of (:password) }
      it "should be longer than 6 characters" do
        expect(@user.password.length).to be > 6
      end
    end
  end
end
