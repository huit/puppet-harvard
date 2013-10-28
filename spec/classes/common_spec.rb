require 'spec_helper'

describe 'common', :type => :class do

  describe "HUIT Common class with no parameters, basic test" do
    let(:params) { { } }
    
      it {
        should include_class('common::files')
        should include_class('common::packages')
      }
  end
end
