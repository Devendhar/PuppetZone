require 'spec_helper'
describe 'elk' do
  context 'with default values for all parameters' do
    it { should contain_class('elk') }
  end
end
