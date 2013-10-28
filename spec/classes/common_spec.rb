require 'spec_helper'

describe 'common', :type => :class do
  context "HUIT Common class with no parameters, basic test - RedHat" do
    let(:params) { { } }
    let :facts do {
        :operatingsystem => 'RedHat'
    } 
    end
    it {
      should include_class('common::files')
      should include_class('common::packages')
    }
  end
  context "HUIT Common class with no parameters, basic test - CentOS" do
    let(:params) { { } }
    let :facts do {
        :operatingsystem => 'CentOS'
    } 
    end
    it {
      should include_class('common::files')
      should include_class('common::packages')
    }
  end
  context "HUIT Common class with no parameters, basic test - Amazon Linux" do
    let(:params) { { } }
    let :facts do {
        :operatingsystem => 'Amazon'
    } 
    end
    it {
      should include_class('common::files')
      should include_class('common::packages')
    }
  end
  context "HUIT Common class with no parameters, basic test - Unsupported" do
    let(:params) { { } }
    it do 
      expect {
      should include_class('common::files')
      should include_class('common::packages')
    }.to raise_error(Puppet::Error, /is not supported/)
    end
  end
end
