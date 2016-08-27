describe RSocial::Facebook::Client::Pages do
  describe 'Facebook.client.page()' do

    before(:each) do
      @client = RSocial::Facebook.client({})
      @user = @client.page("RyanBingham")
    end

    #{:followers=>"149,207 likes", :handle=>"RyanBingham"}
    it 'should find page stats' do
      expect(@user[:followers]).to be_an Integer
      expect(@user[:handle]).to be_an String
    end

  end
end
