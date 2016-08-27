describe RSocial::Youtube::Client::Users do
  describe 'Youtube.client.user()' do

    before(:each) do
      @client = RSocial::Youtube.client({})
      @user = @client.user("ryanbingham")
    end

    #{:subscribers=>"11,131", :handle=>"ryanbingham"}
    it 'should find user stats' do
      expect(@user[:subscribers]).to be_an String
      expect(@user[:handle]).to be_an String
    end

  end
end
