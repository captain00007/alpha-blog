require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_user = User.create(username: "johndoe", email: "johndoe@example.com",password: "password", admin: true)
    @user_default = User.create(username: "captain", email: "captain@example.com",password: "password", admin: false)
    @category = Category.create(name: "Football")
  end

  test "should get index" do
    sign_in_as(@user_default)
    get categories_url
    assert_response :success
  end

  test "should get new" do
    sign_in_as(@admin_user)
    get new_category_url
    assert_response :success
  end

  test "should create category" do
    #sign_in_as(@user_default)
    sign_in_as(@admin_user) 
    assert_difference("Category.count", 1) do
      post categories_url, params: { category: { name: "Basketball" } }
    end

    assert_redirected_to category_url(Category.last)
  end

  test "should show category" do
    sign_in_as(@user_default)
    get category_url(@category)
    assert_response :success
  end

  test "should get edit" do
    #sign_in_as(@user_default)
    sign_in_as(@admin_user)
    get edit_category_url(@category)
    assert_response :success
  end

  test "should update category" do
    #sign_in_as(@user_default)
    sign_in_as(@admin_user)
    patch category_url(@category), params: { category: { name: "Formule 1"  } }
    assert_redirected_to category_url(@category)
  end

  test "should destroy category" do
    #sign_in_as(@user_default)
    sign_in_as(@admin_user)
    assert_difference("Category.count", -1) do
      delete category_url(@category)
    end

    assert_redirected_to categories_url
  end
end
