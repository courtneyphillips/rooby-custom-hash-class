require('pry')

class MyHash
  define_method(:initialize) do
    @hash = []
  end

  define_method(:length) do
    @hash.length
  end

  define_method(:myStore) do |key, value|
    @hash.push([key, value])
  end

  define_method(:myFetch) do |key|
    returned_value = nil
    @hash.each do |entry|
      if entry.include?(key)
        returned_value = entry[1]
      end
    end
    returned_value || "Value not present"
  end
end
