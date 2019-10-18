require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  login_user

  describe "Comments..." do
    it "Creates a comment" do
      post = FactoryBot.create(:post)
      Comment.create(message: "Hello", post_id: post.id, user_id: post.user_id, email: post.user.email)
      expect(response).to be_successful
    end

    it "Deletes a comment (even though if it doesn't exist - expected delete behaviour)" do
      post = FactoryBot.create(:post)
      comment = Comment.create(message: "Hello", post_id: post.id, user_id: post.user_id, email: post.user.email)
      comment.delete
    end

  end

end
