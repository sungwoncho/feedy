require "rails_helper"

describe User do
  describe 'association' do
    it { should have_many(:feedbacks) }
  end
end
