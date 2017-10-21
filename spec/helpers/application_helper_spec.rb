require "rails_helper"

describe ApplicationHelper do
  describe "#avatar_url" do
    it "returns the gravatar" do
      expect(helper.page_title).to eq("https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150")
    end
  end
end