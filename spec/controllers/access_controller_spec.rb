require 'spec_helper'

describe AccessController do

  describe "GET 'menu'" do
    it "should be successful" do
      get 'menu'
      response.should be_success
    end
  end

  describe "GET 'login'" do
    it "should be successful" do
      get 'login'
      response.should be_success
    end
  end

  describe "GET 'attempt_login'" do
    it "should be successful" do
      get 'attempt_login'
      response.should be_success
    end
  end

  describe "GET 'logout'" do
    it "should be successful" do
      get 'logout'
      response.should be_success
    end
  end

end
