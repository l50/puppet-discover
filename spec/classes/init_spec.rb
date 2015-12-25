require 'spec_helper'
describe 'discover' do

  context 'with defaults for all parameters' do
    it { should contain_class('discover') }
  end
end
