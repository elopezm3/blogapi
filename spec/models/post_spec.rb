require 'rails_helper'

RSpec.describe Post, type: :model do

  describe 'validations' do
    it 'validate presence of required fields' do
      should validate_presence_of(:title)
      should validate_presence_of(:content)
      should validate_inclusion_of(:published).in_array([true, false])
      should validate_presence_of(:user_id)
    end

    it 'validate relations' do
      should belong_to(:user)
    end
  end
end
