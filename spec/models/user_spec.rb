require 'rails_helper'

RSpec.describe User, type: :model do

  context "validation" do
    it { should validate_presence_of(:points) }
  end

  context "with n skills" do
    it "save user with 1 skill" do
      user = create(:user)
      skill = create(:skill, user_ids: user.id)
      expect(user.reload.skills).to eq([skill])
    end
  end
end
