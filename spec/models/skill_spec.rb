require 'rails_helper'

RSpec.describe Skill, type: :model do

  context "validation" do
    it { should validate_presence_of(:name) }
  end

  context "with n users" do
    it "save user with skills" do
      skill = create(:skill)
      user = skill.users.create!(:points => 100)
      expect(skill.reload.users).to eq([user])
    end
    it "save user with many skills" do
      skill = create(:skill)
      user = skill.users.create!(:points => 100)
      user2 = skill.users.create!(:points => 100)
      expect(skill.reload.users).to eq([user, user2])
    end
  end

  context "Scope#only_parents" do
    it "fetch all skill without child" do
      parent1 = create(:skill)
      parent2 = create(:skill)
      skill1 = create(:skill, parent_id: parent1.id)
      skill2 = create(:skill, parent_id: parent1.id)
      expect(Skill.count).to eq(4)
      expect(Skill.only_parents).to match_array([parent1, parent2])
    end
  end
  context "#children" do
    it "fetch all skill's children" do
      skill = create(:skill)
      skill1 = create(:skill, parent_id: skill.id)
      expect(skill.reload.children).to eq([skill1])
    end
  end
  context "#children_ids" do
    it "save user with many skills" do
      skill = create(:skill)
      skill1 = create(:skill, parent_id: skill.id)
      expect(skill.reload.children_ids).to eq([skill1.id])
    end
  end
end

