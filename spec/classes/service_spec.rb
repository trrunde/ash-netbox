require 'spec_helper'

describe 'netbox::service' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:params) do
        {
          install_root: '/opt',
          user: 'testuser',
          group: 'testpass',
        }
      end

      it { is_expected.to compile }
    end
  end
end
