require('rspec')
require('./lib/myhash.rb')

describe(MyHash) do
  describe("#length") do
    it("returns 0 if a MyHash object is empty") do
      test_hash = MyHash.new()
      expect(test_hash.length).to(eq(0))
    end
  end
  describe("#length") do
    it("returns the length of a MyHash object") do
      test_hash = MyHash.new()
        test_hash.myStore("kitten", "cute")
      expect(test_hash.length).to(eq(1))
    end
  end
  describe("#myStore") do
    it("stores a key and corresponding value") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.length).to(eq(1))
    end
  end
  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end
  describe("#myFetch") do
    it("returns an error message if the key used isn't present in the MyHash object") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("puppy")).to(eq("Value not present"))
    end
  end
  describe("#has_key?") do
    it("will return false if the given key is not present in the MyHash object") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.has_key?("puppy")).to(eq(false))
    end
  end
end
