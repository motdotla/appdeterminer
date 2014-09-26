require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) { FactoryGirl.build(:user) }

  it { expect(user).to be_valid }

  context "missing email" do
    before { user.email = " " }

    it { expect(user).to_not be_valid }
  end

  context "user exists" do
    let(:user2) { FactoryGirl.build(:user) }

    before { user.save! }

    it "has a default empty array for historysniffed_app_ids" do
      expect(user.historysniffed_app_ids).to eq([])
    end

    it "must have a unique app.name" do
      expect(user2).to_not be_valid
    end
  end

  context "app exists and user exists" do
    let(:app) { FactoryGirl.build(:app) }

    before do
      user.save!
      app.save!
    end

    it "has no historysniffed_apps" do
      expect(user.historysniffed_apps).to eq([])
    end

    it "adds historysniffed_apps" do
      user.add_historysniffed_app_by_name(app.name)
      expect(user.historysniffed_apps).to eq([app])
    end
  end
end
