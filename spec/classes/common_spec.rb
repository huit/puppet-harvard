require 'spec_helper'

describe 'common', :type => :class do

  describe "HUIT Common class with no parameters, basic test" do
    let(:params) { { } }
    
      it {
        should contain_package('git')
        should contain_package('vim-enhanced')
      }
  end
end
