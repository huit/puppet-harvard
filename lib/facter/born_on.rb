#!/usr/bin/ruby
require 'facter'

begin
  Facter.operatingsystem
rescue
  Facter.loadfacts()
end
os = Facter.value("operatingsystem")
if os.match(/CentOS|RedHat/) then
  unless  `rpm -q --last basesystem`.empty?
    Facter.add("born_on") do
      setcode do
        date = `rpm -q --qf '%{INSTALLTIME}' basesystem`
        born_on = `date --date=@#{date} +%F`.chomp
        born_on
      end
    end
  end
end

