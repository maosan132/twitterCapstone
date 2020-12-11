require_relative '../rails_helper'

RSpec.describe Following, type: :model do
  before :each do
    @user1 = User.create(fullname: 'Any Name 1', username: 'userx-1')
    @user2 = User.create(fullname: 'Any Name 2', username: 'userx-2')
  end

  it 'is a valid following' do
    f = Following.new(follower_id: @user1.id, followed_id: @user2.id)
    expect(f).to be_valid
  end

  it 'is not a valid following' do
    f = Following.new(follower_id: '', followed_id: '')
    expect(f).to_not be_valid
  end

  context 'active record associations' do
    it 'belongs to followed' do
      f = Following.reflect_on_association(:followed)
      expect(f.macro).to equal :belongs_to
    end

    it 'belongs to follower' do
      f = Following.reflect_on_association(:follower)
      expect(f.macro).to equal :belongs_to
    end
  end
end
