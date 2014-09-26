require 'rails_helper'

RSpec.describe App, :type => :model do
  let(:app)  { FactoryGirl.build(:app) }
  
  it { expect(app).to be_valid }

  context "missing name" do
    before { app.name = " " }

    it { expect(app).to_not be_valid }
  end

  context "missing url" do
    before { app.url = " " }

    it { expect(app).to_not be_valid }
  end

  context "url is not a real url" do
    before { app.url = "this is not a url" }

    it { expect(app).to_not be_valid }
  end

  context "url does not actually exist" do
    before { app.url = "http://thisurldoesnotactualyexist1.com/image.png" }

    it { expect(app).to_not be_valid }
  end

  context "app exists" do
    let(:app2) { FactoryGirl.build(:app) }

    before { app.save! }

    it "must have a unique app.name" do
      expect(app2).to_not be_valid
    end
  end
end
