require_relative '../rails_helper'

RSpec.describe User, type: :model do
  context 'is trying to register and' do
    it 'both name and username has no input' do
      user = User.new(fullname: '', username: '')
      expect(user.valid?).to be(false)
    end

    it 'both name and username has input' do
      user = User.new(fullname: 'Any Name', username: 'userx')
      expect(user.valid?).to be(true)
    end
  end

  context 'active record associations' do
    it 'has many tastes' do
      u = User.reflect_on_association(:tastes)
      expect(u.macro).to eq :has_many
    end

    it 'has many followeds' do
      u = User.reflect_on_association(:followeds)
      expect(u.macro).to eq :has_many
    end

    it 'has many followers' do
      u = User.reflect_on_association(:followers)
      expect(u.macro).to eq :has_many
    end
  end
end
