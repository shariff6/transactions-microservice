require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe Transaction, type: :model do
    describe 'validations' do
        describe 'it validates user_id' do
          it { is_expected.to validate_presence_of(:user_id) }
        end
        describe 'it validates input_amount' do
            it { is_expected.to validate_presence_of(:input_amount) }
        end
        describe 'it validates input_currency' do
            it { is_expected.to validate_presence_of(:input_currency) }
        end
        describe 'it validates output_amount' do
            it { is_expected.to validate_presence_of(:output_amount) }
        end
        describe 'it validates output_currency' do
            it { is_expected.to validate_presence_of(:output_amount) }
        end        
      end
end
