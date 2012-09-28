require 'test_helper'

class QuotesControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
    # Making sure we have a quotes instance variable
    assert_not_nil assigns(:quotes)
  end

  test "should get show" do
    get :show, :id => quotes(:test_quote).id
    assert_response :success
    # Making sure we have a quote instance variable
    assert_not_nil assigns(:quote)
  end

  test "should get new" do
    get :new 
    assert_response :success
    # Making sure we have a quote instance variable
    assert_not_nil assigns(:quote)
  end

  test "should get edit" do
    get :edit, :id => quotes(:test_quote).id
    assert_response :success
    # Making sure we have a quote instance variable
    assert_not_nil assigns(:quote)
  end

  test "should create quote" do
    # Making sure there is one new entry in the quotes table
    assert_difference('Quote.count') do
      post :create, :quote => { :quote => 'Test quote', :author => 'Tester' }
    end
    
    # Making sure we are taken to the created quote's page
    assert_redirected_to quote_path(assigns(:quote))
    # And that we are communicating success to the user
    assert_equal 'Quote was successfully created.', flash[:notice]
  end

  test "should update quote" do
    # Setting up new quote info
    new_quote = 'Test quote of greater magnificence.'
    new_author = 'Quote Testerer'

    # Making sure there is no new entry in the quotes table
    assert_no_difference('Quote.count') do
      put :update, :id => quotes(:test_quote).id, 
          :quote => { :quote => new_quote, :author => new_author }
    end

    # Making sure we are taken to the updated quote's page
    assert_redirected_to quote_path(assigns(:quote))
    # And that we are communicating success to the user
    assert_equal 'Quote was successfully updated.', flash[:notice]

    # Pulling quote from db and making sure it was updated with new info
    quote_in_db = Quote.find(quotes(:test_quote).id)
    assert_equal new_quote, quote_in_db.quote
    assert_equal new_author, quote_in_db.author
  end

  test "should delete quote" do
    # Making sure there is one less entry in the quotes table
    assert_difference('Quote.count', -1) do
      delete :destroy, :id => quotes(:test_quote).id
    end

    # Making sure we are taken to the all quotes page
    assert_redirected_to quotes_path
    # And that we are communicating success to the user
    assert_equal 'Quote was successfully deleted.', flash[:notice]
  end

end
