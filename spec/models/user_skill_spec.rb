require 'rails_helper'

describe UserSkill, type: :model do
  describe 'Relationships' do
    it {should belong_to :user}
    it {should belong_to :skill}
  end
end
