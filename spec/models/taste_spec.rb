require_relative '../rails_helper'

RSpec.describe Taste, type: :model do
  context 'Validation tests' do
    let(:taste) { User.new(fullname: 'Any Name', username: 'userx') }

    it 'field text has a valid content' do
      subject.text = 'This is the text that will serve as a test of a new taste a user has written'
      subject.user = taste
      expect(subject).to be_valid
    end

    it 'field text has no content' do
      expect(subject).to_not be_valid
    end
  end

  context 'active record associations' do
    it 'belongs to user' do
      t = Taste.reflect_on_association(:user)
      expect(t.macro).to equal :belongs_to
    end
  end
end
