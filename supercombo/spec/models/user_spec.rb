require 'spec_helper'

describe User do
  context "validations" do
    before :each do
      @user = User.new
      @user.username = "MrA'sBaseball"
    end
  it { should validate_presence_of (:username) }
  end
end
