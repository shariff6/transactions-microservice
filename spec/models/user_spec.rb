require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe User, type: :model do
    describe 'validations' do
        describe 'it validates user_id' do
          it { is_expected.to validate_presence_of(:email) }
        end
        describe 'it validates input_amount' do
            it { is_expected.to validate_presence_of(:name) }
        end
        describe 'it validates input_currency' do
            it { is_expected.to validate_presence_of(:password) }
        end 
      end
end