require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe SendListPostsController do

  def mock_send_list_post(stubs={})
    @mock_send_list_post ||= mock_model(SendListPost, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all send_list_posts as @send_list_posts" do
      SendListPost.stub(:all) { [mock_send_list_post] }
      get :index
      assigns(:send_list_posts).should eq([mock_send_list_post])
    end
  end

  describe "GET show" do
    it "assigns the requested send_list_post as @send_list_post" do
      SendListPost.stub(:find).with("37") { mock_send_list_post }
      get :show, :id => "37"
      assigns(:send_list_post).should be(mock_send_list_post)
    end
  end

  describe "GET new" do
    it "assigns a new send_list_post as @send_list_post" do
      SendListPost.stub(:new) { mock_send_list_post }
      get :new
      assigns(:send_list_post).should be(mock_send_list_post)
    end
  end

  describe "GET edit" do
    it "assigns the requested send_list_post as @send_list_post" do
      SendListPost.stub(:find).with("37") { mock_send_list_post }
      get :edit, :id => "37"
      assigns(:send_list_post).should be(mock_send_list_post)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created send_list_post as @send_list_post" do
        SendListPost.stub(:new).with({'these' => 'params'}) { mock_send_list_post(:save => true) }
        post :create, :send_list_post => {'these' => 'params'}
        assigns(:send_list_post).should be(mock_send_list_post)
      end

      it "redirects to the created send_list_post" do
        SendListPost.stub(:new) { mock_send_list_post(:save => true) }
        post :create, :send_list_post => {}
        response.should redirect_to(send_list_post_url(mock_send_list_post))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved send_list_post as @send_list_post" do
        SendListPost.stub(:new).with({'these' => 'params'}) { mock_send_list_post(:save => false) }
        post :create, :send_list_post => {'these' => 'params'}
        assigns(:send_list_post).should be(mock_send_list_post)
      end

      it "re-renders the 'new' template" do
        SendListPost.stub(:new) { mock_send_list_post(:save => false) }
        post :create, :send_list_post => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested send_list_post" do
        SendListPost.stub(:find).with("37") { mock_send_list_post }
        mock_send_list_post.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :send_list_post => {'these' => 'params'}
      end

      it "assigns the requested send_list_post as @send_list_post" do
        SendListPost.stub(:find) { mock_send_list_post(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:send_list_post).should be(mock_send_list_post)
      end

      it "redirects to the send_list_post" do
        SendListPost.stub(:find) { mock_send_list_post(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(send_list_post_url(mock_send_list_post))
      end
    end

    describe "with invalid params" do
      it "assigns the send_list_post as @send_list_post" do
        SendListPost.stub(:find) { mock_send_list_post(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:send_list_post).should be(mock_send_list_post)
      end

      it "re-renders the 'edit' template" do
        SendListPost.stub(:find) { mock_send_list_post(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested send_list_post" do
      SendListPost.stub(:find).with("37") { mock_send_list_post }
      mock_send_list_post.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the send_list_posts list" do
      SendListPost.stub(:find) { mock_send_list_post }
      delete :destroy, :id => "1"
      response.should redirect_to(send_list_posts_url)
    end
  end

end
