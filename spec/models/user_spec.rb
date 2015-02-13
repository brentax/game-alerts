require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  subject { user }

  it { should respond_to(:email) }
  it { should respond_to(:edit_code) }

  it { should be_valid }

  describe "without an email" do
    before { user.email = " " }
    it { should_not be_valid }
  end

  describe "without a edit_code" do
    before { user.edit_code = " " }
    it { should_not be_valid }
  end
end
