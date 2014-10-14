ruby_building_blocks
====================

Three small coding challenges

##caesar_cipher

`#caesar_cipher` takes two arguments, the string to encode and an integer of the shift factor. This only affects letters, and wraps the character when it passes `Z` or `z`, preserving the character's case.
```
caesar_cipher("Wow this is pretty cool!",5)
=> "Btb ymnx nx uwjyyd httq!"
```

##stock_picker

`#stock_picker` takes an array argument containing a list of stock prices over the course of n days. The method will return the day you should buy and the day you should sell for maximum profit.
```
stock_picker([45,23,1,2,5,22,2])
=> [1, 22]
```

##substrings

`#substrings` takes a string argument followed by an array of terms. The method will return a hash containing any terms that were found in the string, and how many times they were found.
```
substrings("Do you believe in miracles?",["do","I","think","mir","e"])
=> {"do"=>1, "I"=>3, "mir"=>1, "e"=>4}
```
