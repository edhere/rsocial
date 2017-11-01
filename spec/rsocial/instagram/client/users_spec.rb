describe RSocial::Instagram::Client::Users do
  describe 'Instagram.client.user()' do

    before(:each) do
      @client = RSocial::Instagram.client({})
      @user = @client.user("ryanbingham_official")
    end

    #{:posts=>"1,458", :followers=>"43.8k", :following=>"171", :handle=>"ryanbingham_official"}
    it 'should find user stats' do
      expect(@user[:post_count]).to be_an Integer
      expect(@user[:following_count]).to be_an Integer
      expect(@user[:follower_count]).to be_an Integer
      expect(@user[:handle]).to be_an String
    end

  end
end
