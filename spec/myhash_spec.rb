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
end
