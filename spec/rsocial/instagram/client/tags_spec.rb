describe RSocial::Instagram::Client::Tags do
  describe 'Instagram.client.tag()' do

    before(:each) do
      @client = RSocial::Instagram.client({})
      @tag = @client.tag("offsite")
    end

    #
    it 'should find user stats' do
      expect(@tag[:post_count]).to be_an Integer
      expect(@tag[:images]).to be_an Array
    end

  end
end
