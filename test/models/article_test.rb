require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "Should not save article without title" do
    @article = Article.new(title: " ")
    assert_not @article.valid?, "Saved the article without a title"
  end
end
