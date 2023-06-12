require "test_helper"

class ListingCategoriesTest < ActionDispatch::IntegrationTest
  def setup
    @user_default = User.create(username: "captain", email: "captain@example.com",password: "password", admin: false)
    @category = Category.create(name: "Football")
    @category2 = Category.create(name: "Basketball")
  end

  test "should show categories listing" do
    sign_in_as(@user_default)
    get '/categories'
    assert_select "a[href=?]", category_path(@category), text: @category.name
    assert_select "a[href=?]", category_path(@category2), text: @category2.name
  end
end
