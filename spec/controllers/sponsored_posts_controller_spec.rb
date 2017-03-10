require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:my_topic) { Topic.create!(name:  RandomData.random_sentence, description: RandomData.random_paragraph) }
  # update how we create my_post so that it will belong to my_topic
  let(:my_post) { my_topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }

  describe "GET #show" do
    it "returns http success" do
      get :show, topic_id: my_topic.id, id: sponsored_post.id
      expect(response).to have_http_status(:success)
    end
    it "renders the #show view" do
      get :show topic_id: my_topic.id, id: sponsored_post.id 
      expect(resposne).to render_template :sponsored_post
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
