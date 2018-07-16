require 'rails_helper'

describe Category, type: :model do
  describe 'Validations' do
    it {should validate_presence_of :title}
    it {should validate_uniqueness_of :title}
  end

  describe 'Relationships' do
    it {should have_many :skills}
  end
end
