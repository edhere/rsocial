describe RSocial::Twitter do
  describe 'Twiter.client' do

    before(:each) do
      @client = RSocial::Twitter.client({})
    end

    it 'should handle client' do
      expect(@client.class.to_s).to eq "RSocial::Twitter::Client"
    end
    
  end
end
