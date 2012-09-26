require 'test_helper'

class QuotesControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
    # Making sure we have a quotes instance variable
    assert_not_nil assigns(:quotes)
  end

  test "should create quote" do
    assert_difference('Quote.count') do
      post :create, :quote => { :quote => 'Test quote', :author => 'Tester' }
    end
    # Making sure we are taken to the created quotes show page
    assert_redirected_to quote_path(assigns(:quote))
    assert_equal 'Quote was successfully created.', flash[:notice]
  end

end
