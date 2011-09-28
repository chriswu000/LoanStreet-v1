require "spec_helper"

describe LoansController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/loans" }.should route_to(:controller => "loans", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/loans/new" }.should route_to(:controller => "loans", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/loans/1" }.should route_to(:controller => "loans", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/loans/1/edit" }.should route_to(:controller => "loans", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/loans" }.should route_to(:controller => "loans", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/loans/1" }.should route_to(:controller => "loans", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/loans/1" }.should route_to(:controller => "loans", :action => "destroy", :id => "1")
    end

  end
end
