require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:game) { build(:game) }

  subject { game }

  it { should respond_to(:name) }
  it { should respond_to(:steam_id) }
  it { should respond_to(:gog_id) }
  it { should respond_to(:humblestore_id) }

  it { should be_valid }

  describe "without a name" do
    before { game.name = " " }
    it { should_not be_valid }
  end

  describe "without a steam_id" do
    before { game.steam_id = " " }
    it { should be_valid }
  end

  describe "without a gog_id" do
    before { game.gog_id = " " }
    it { should be_valid }
  end

  describe "without a humblestore_id" do
    before { game.humblestore_id = " " }
    it { should be_valid }
  end
end
