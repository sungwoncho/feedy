require "rails_helper"

describe Feedy do
  it { should be_a(Module) }

  describe '.feedback_giver?' do
    it 'should be provided for models' do
      expect(User).to respond_to(:feedback_giver?)
      expect(NonUser).to respond_to(:feedback_giver?)
    end

    context 'for feedback givers' do
      specify { expect(User).to be_feedback_giver }
    end

    context 'for non feedback givers' do
      specify { expect(NonUser).not_to be_feedback_giver }
    end
  end
end
