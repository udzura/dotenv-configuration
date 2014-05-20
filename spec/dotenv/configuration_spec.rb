require 'spec_helper'

describe 'Dotenv' do
  describe '.configure' do
    it 'should be implemented' do
      expect(Dotenv).to respond_to :configure
      expect(Dotenv).to respond_to :get
    end
  end
end
