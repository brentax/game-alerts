require 'rails_helper'

RSpec.describe Subscription, type: :model do
  let(:subscription) { build(:subscription) }

  subject { subscription }

  it { should respond_to(:threshold_price) }
  it { should respond_to(:user) }
  it { should respond_to(:game) }

  it { should be_valid }

  describe "with a zero threshold_price" do
    before { subscription.threshold_price = 0 }
    it { should_not be_valid }
  end

  describe "with a negative threshold_price" do
    before { subscription.threshold_price = -1 }
    it { should_not be_valid }
  end
end
