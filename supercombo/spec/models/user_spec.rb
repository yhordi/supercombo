require 'spec_helper'

describe "validations" do
  it { should validate_presence_of :username }
end
