describe RSocial::Soundcloud::Client::Users do
  describe 'Soundcloud.client.user()' do

    before(:each) do
      @client = RSocial::Soundcloud.client({})
      @user = @client.user("ryan-bingham")
    end

    #{:followers=>"254,682", :tracks=>"5"}
    it 'should find user stats' do
      expect(@user[:followers]).to be_an Integer
      expect(@user[:tracks]).to be_an Integer
    end

  end
end
