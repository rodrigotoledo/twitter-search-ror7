require 'rails_helper'

RSpec.describe TwitterRequest, type: :model do
  describe 'With informations' do
    it 'returns following requests' do
      response = TwitterRequest.following_me('rodrigotoledo')
      response.map { |follower| follower.screen_name }
      # response.att

    end
  end
end