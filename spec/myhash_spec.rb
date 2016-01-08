require('rspec')
require('./lib/myhash.rb')

describe(MyHash) do
  describe("#myStore") do
    it("stores a key and corresponding value") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.length).to(eq(["kitten", "cute"]))
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
