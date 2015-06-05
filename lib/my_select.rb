# Now that we've built our own each and collect method, let's build our own select method! ]
# If you don't remember what `.select` does, before sure to check out the [ruby docs
# ](http://ruby-doc.org/core-2.1.3/Enumerable.html#method-i-select) on it.
# Returns an array containing all elements of enum for which the given block returns a true value.
# If no block is given, an Enumerator is returned instead.
# selects and then returns all elements that fit a certain condition

def my_select(array)
  #if !array.empty?
  #  array.each do |element|
  #  end
  # end
  counter = 0
  new_array = []
  while counter < array.length
      yield(array[counter]) ? new_array << array[counter] : false
      counter += 1
  end
    new_array
end

