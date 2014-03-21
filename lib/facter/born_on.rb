#!/usr/bin/ruby
require 'facter'

begin
  Facter.osfamily
rescue
  Facter.loadfacts()
end
os = Facter.value("osfamily")

Facter.add(:born_on) do
  confine :kernel => "Linux"
  confine :osfamily => "RedHat"
  setcode do
    begin
      date = `rpm -q --qf '%{INSTALLTIME}' basesystem`
      `date --date=@#{date} +%F`.chomp
    rescue
      "UNKNOWN"
    end
  end
end

Facter.add(:born_on) do
  confine :kernel => "Linux"
  setcode do
    begin
      blockdevices = Facter.value("blockdevices").split(",")
      filesystems = Facter.value("filesystems").split(",")
      fsdevice = blockdevices[filesystems.index { |fs| fs =~ /(ext)/ }]
      Facter::Util::Resolution.exec("date --date='$(tune2fs -l /dev/#{fsdevice}1 | grep created | cut -d\ -f3-)' +%F")
    rescue
      "UNKNOWN"
    end
  end
end

Facter.add(:born_on) do
  setcode do
    "UNKNOWN"
  end
end
