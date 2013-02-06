require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MicroPostsController do

  # This should return the minimal set of attributes required to create a valid
  # MicroPost. As you add validations to MicroPost, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "user_id" => "" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MicroPostsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all micro_posts as @micro_posts" do
      micro_post = MicroPost.create! valid_attributes
      get :index, {}, valid_session
      assigns(:micro_posts).should eq([micro_post])
    end
  end

  describe "GET show" do
    it "assigns the requested micro_post as @micro_post" do
      micro_post = MicroPost.create! valid_attributes
      get :show, {:id => micro_post.to_param}, valid_session
      assigns(:micro_post).should eq(micro_post)
    end
  end

  describe "GET new" do
    it "assigns a new micro_post as @micro_post" do
      get :new, {}, valid_session
      assigns(:micro_post).should be_a_new(MicroPost)
    end
  end

  describe "GET edit" do
    it "assigns the requested micro_post as @micro_post" do
      micro_post = MicroPost.create! valid_attributes
      get :edit, {:id => micro_post.to_param}, valid_session
      assigns(:micro_post).should eq(micro_post)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MicroPost" do
        expect {
          post :create, {:micro_post => valid_attributes}, valid_session
        }.to change(MicroPost, :count).by(1)
      end

      it "assigns a newly created micro_post as @micro_post" do
        post :create, {:micro_post => valid_attributes}, valid_session
        assigns(:micro_post).should be_a(MicroPost)
        assigns(:micro_post).should be_persisted
      end

      it "redirects to the created micro_post" do
        post :create, {:micro_post => valid_attributes}, valid_session
        response.should redirect_to(MicroPost.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved micro_post as @micro_post" do
        # Trigger the behavior that occurs when invalid params are submitted
        MicroPost.any_instance.stub(:save).and_return(false)
        post :create, {:micro_post => { "user_id" => "invalid value" }}, valid_session
        assigns(:micro_post).should be_a_new(MicroPost)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        MicroPost.any_instance.stub(:save).and_return(false)
        post :create, {:micro_post => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested micro_post" do
        micro_post = MicroPost.create! valid_attributes
        # Assuming there are no other micro_posts in the database, this
        # specifies that the MicroPost created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        MicroPost.any_instance.should_receive(:update_attributes).with({ "user_id" => "" })
        put :update, {:id => micro_post.to_param, :micro_post => { "user_id" => "" }}, valid_session
      end

      it "assigns the requested micro_post as @micro_post" do
        micro_post = MicroPost.create! valid_attributes
        put :update, {:id => micro_post.to_param, :micro_post => valid_attributes}, valid_session
        assigns(:micro_post).should eq(micro_post)
      end

      it "redirects to the micro_post" do
        micro_post = MicroPost.create! valid_attributes
        put :update, {:id => micro_post.to_param, :micro_post => valid_attributes}, valid_session
        response.should redirect_to(micro_post)
      end
    end

    describe "with invalid params" do
      it "assigns the micro_post as @micro_post" do
        micro_post = MicroPost.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MicroPost.any_instance.stub(:save).and_return(false)
        put :update, {:id => micro_post.to_param, :micro_post => { "user_id" => "invalid value" }}, valid_session
        assigns(:micro_post).should eq(micro_post)
      end

      it "re-renders the 'edit' template" do
        micro_post = MicroPost.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MicroPost.any_instance.stub(:save).and_return(false)
        put :update, {:id => micro_post.to_param, :micro_post => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested micro_post" do
      micro_post = MicroPost.create! valid_attributes
      expect {
        delete :destroy, {:id => micro_post.to_param}, valid_session
      }.to change(MicroPost, :count).by(-1)
    end

    it "redirects to the micro_posts list" do
      micro_post = MicroPost.create! valid_attributes
      delete :destroy, {:id => micro_post.to_param}, valid_session
      response.should redirect_to(micro_posts_url)
    end
  end

end
