describe RSocial::Twitter::Client::Users do
  describe 'Twitter.client.user()' do

    before(:each) do
      @client = RSocial::Twitter.client({})
      @user = @client.user("RyanBingham")
    end

    #{:tweets=>"5,668", :following=>"633", :followers=>"39.8K", :likes=>"14.8K", :handle=>"RyanBingham"}
    it 'should find user stats' do
      expect(@user[:tweet_count]).to be_an Integer
      expect(@user[:following_count]).to be_an Integer
      expect(@user[:follower_count]).to be_an Integer
      expect(@user[:like_count]).to be_an Integer
      expect(@user[:handle]).to be_an String
    end

  end
end
