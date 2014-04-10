# Encoding: utf-8

require_relative 'spec_helper'

describe package('git') do
  it { should be_installed }
end

describe file('/tmp/app') do
  it { should be_directory }
end

describe file('/root/.varnish.18.patch.applied') do
  it { should be_file }
end
