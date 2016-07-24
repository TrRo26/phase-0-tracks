# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#--------------------------------------------------------------------------------

"iNvEsTiGaTiOn".swapcase
"iNvEsTiGaTiOn".gsub(/..?/, &:capitalize) #Don't quite fully understand this one
"iNvEsTiGaTiOn".scan(/..?/).map(&:capitalize) * '' #Don't quite fully understand this one
# => “InVeStIgAtIoN”

"zom".gsub(/[o]/, "oo")
"zom".sub(/[o]/, "oo")
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".replace "the usual suspects"
"the usual" + " suspects"
"the usual" << ' suspects'
#=> "the usual suspects"

" suspects".insert(0, "the usual")
" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter"[0...-1]
# => "The case of the disappearing last lette"

"The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

"z".ord
"z".sum
# => 122

# (What is the significance of the number 122 in relation to the character z?)
This is the ASCII html code number for the (lowercase) "z"

"How many times does the letter 'a' appear in this string?".count "a"
# => 4