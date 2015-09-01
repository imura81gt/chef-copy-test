require 'spec_helper'

digits = 0..9
digits.each do |digit|
  describe file("/root/grub.conf.#{digit}") do
  	it { should be_file }
  end
end
