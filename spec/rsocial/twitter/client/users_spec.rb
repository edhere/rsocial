describe RSocial::Twitter::Client::Users do
  describe 'Twitter.client.user()' do

    before(:each) do
      @client = RSocial::Twitter.client({})
      @user = @client.user("RyanBingham")
    end

    #{:tweets=>"5,668", :following=>"633", :followers=>"39.8K", :likes=>"14.8K", :handle=>"RyanBingham"}
    it 'should find user stats' do
      expect(@user[:tweets]).to be_an String
      expect(@user[:following]).to be_an String
      expect(@user[:followers]).to be_an String
      expect(@user[:likes]).to be_an String
      expect(@user[:handle]).to be_an String
    end

  end
end
