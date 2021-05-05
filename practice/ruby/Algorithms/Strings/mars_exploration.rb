# Letters in some of the SOS messages are altered by cosmic radiation during transmission. 
# Given the signal received by Earth as a string, , determine how many letters of the 
# SOS message have been changed by radiation.

def marsExploration(s)
  damaged = 0
  s.split('').each_with_index do |_,i|
    damaged += 1 if s[i] != 'SOS'[i%3]
  end
  damaged
end
