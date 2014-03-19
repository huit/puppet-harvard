require 'time'
# Create lifeclock counter (see Logans run)
# Add 36 months in seconds to the born_on fact
Facter.add("lifeclock") do
    setcode do
        born_on = Facter.value('born_on')
        time = Time.parse(born_on) 
        time = time + ( 2592000 * 36 )
        lifeclock = time.strftime("%F")
        lifeclock
    end
end
