require 'spec_helper_acceptance'

describe 'vision_rsnapshot' do
  context 'with defaults' do
    it 'run idempotently' do
      pp = <<-EOS
        class { 'vision_rsnapshot': }
      EOS

      apply_manifest(pp, catch_failures: true)
      apply_manifest(pp, catch_changes: true)
    end
  end

  context 'packages installed' do
    describe package('rsnapshot') do
      it { is_expected.to be_installed }
    end
  end
  context 'files provisioned' do
    describe file('/etc/rsnapshot.conf') do
      it { is_expected.to exist }
      its(:content) { is_expected.to match 'backup' }
    end
    describe file('/etc/rsnapshot/example.com.rsnapshot.conf') do
      it { is_expected.to exist }
      its(:content) { is_expected.to match 'backup' }
    end
  end
end
