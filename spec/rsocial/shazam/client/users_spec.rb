describe RSocial::Shazam::Client::Users do
  describe 'Shazam.client.user()' do

    before(:each) do
      @client = RSocial::Shazam.client({})
      @user = @client.user("40229308")
    end

    #{:followers=>"254,682"}
    it 'should find user stats' do
      expect(@user[:followers]).to be_an Integer
    end

  end
end
