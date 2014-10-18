ruby_building_blocks
====================

A few small coding challenges

##caesar_cipher

`#caesar_cipher` takes two arguments, the string to encode and an integer of the shift factor. This only affects letters, and wraps the character when it passes `Z` or `z`, preserving the character's case.
```
caesar_cipher("Wow this is pretty cool!", 5)
=> "Btb ymnx nx uwjyyd httq!"
```

##stock_picker

`#stock_picker` takes an array argument containing a list of stock prices over the course of `array.length` days. The method will return the day you should buy and the day you should sell for maximum profit.
```
stock_picker([45, 23, 1, 2, 5, 22, 2])
=> [1, 22]
```

##substrings

`#substrings` takes a string argument followed by an array of terms. The method will return a hash containing any terms that were found in the string, and how many times they were found.
```
substrings("Do you believe in miracles?", ["do", "I", "think", "mir", "e"])
=> {"do"=>1, "I"=>3, "mir"=>1, "e"=>4}
```

##bubble_sort and bubble_sort_by

`#bubble_sort` takes an array argument and sorts the array using the bubble sort algorithm. This algorithm compares the first and second, swaps the values if first is larger, then compares second and third until first iteration is complete. Then the pattern repeats
```
bubble_sort([2, 1, 5, 6, 7])
=> [1, 2, 5, 6, 7]
```

`#bubble_sort_by` works the same way, except that a block is taken as the sorting criteria. If the result of the sorting criteria is negative, the values will swap
```
bubble_sort_by(["Tom", "Steven", "Suzy", "Julia"]){ |left, right| right.length - left.length }
=> ["Tom", "Suzy", "Julia", "Steven"]
```

##enumerable.rb

This file contains common enumerable methods, custom built. They are:
- `my_each`
- `my_each_with_index`
- `my_select`
- `my_all?`
- `my_any?`
- `my_none?`
- `my_count`
- `my_map`
- `my_inject`