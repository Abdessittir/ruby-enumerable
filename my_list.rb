require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each()
    i = 0
    while i < @list.length
      yield @list[i]
      i += 1
    end
  end
end
