describe RSocial::Facebook::Client::Posts do
  describe 'Facebook.client.post()' do

    before(:each) do
      @client = RSocial::Facebook.client({})
      @user = @client.page("RyanBingham")
    end

    it 'should find post stats' do
    end

  end
end
