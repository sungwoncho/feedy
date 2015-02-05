require 'rails_helper'

module Feedy
  RSpec.describe Feedback, :type => :model do
    describe 'association' do
      it { should belong_to(:author) }
    end
  end
end
