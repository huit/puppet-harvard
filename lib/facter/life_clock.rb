require 'date'

begin
  Facter.born_on
rescue
  Facter.loadfacts()
end
born_on = Facter.value("born_on")

# Create lifeclock counter (see Logan's Run)
# Add 36 months to the born_on fact
Facter.add(:life_clock) do
  confine :born_on => "UNKNOWN"
  setcode do
    "UNKNOWN"
  end
end

Facter.add(:life_clock) do
  setcode do
    begin
      date = Date.parse(born_on) >> 36
      date.strftime("%F")
    rescue
      "UNKNOWN"
    end
  end
end
