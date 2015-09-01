require('spec_helper')

describe(Client) do

  describe("#deliveryperson") do
    it("lists the deliveryperson carrying the weed") do
     test_deliveryperson = Deliveryperson.create({:name => "Eric"})
     test_client = Client.new({:name => "Ben"})
     test_client.deliveryperson.push(test_deliveryperson)
     expect(test_client.deliveryperson).to(eq([test_deliveryperson]))
   end
 end


  describe("#weeds") do
    it("lists the weeds of the recipe") do
     test_weed = Weed.create({:name => "Tibet Kush"})
     test_client = Client.new({:name => "Ben"})
     test_client.weeds.push(test_weed)
     expect(test_client.weeds).to(eq([test_weed]))
   end
  end


    it("validates if a name is present") do
      test_client = Client.new({:name => ""})
      expect(test_client.save()).to(eq(false))
    end
  end
