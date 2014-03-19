require 'date'
# Create lifeclock counter (see Logans run)
# Add 36 months in seconds to the born_on fact
Facter.add("life_clock") do
  setcode do
    born_on = Facter.value('born_on')
    begin
      date = Date.parse(born_on) >> 36
    rescue
      raise
    end
    date.strftime("%F")
  end
end
