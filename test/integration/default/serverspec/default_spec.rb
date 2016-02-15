require 'spec_helper'

if ['darwin', 'ubuntu'].include? os[:family]
    path = "/tmp"
else
    path = "c:/temp"
end

file = File.join(path, 'server-info.txt')

describe file(file) do
  it { should exist }
end
