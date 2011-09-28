require 'spec_helper'

describe LoansController do

  def mock_loan(stubs={})
    (@mock_loan ||= mock_model(Loan).as_null_object).tap do |loan|
      loan.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all loans as @loans" do
      Loan.stub(:all) { [mock_loan] }
      get :index
      assigns(:loans).should eq([mock_loan])
    end
  end

  describe "GET show" do
    it "assigns the requested loan as @loan" do
      Loan.stub(:find).with("37") { mock_loan }
      get :show, :id => "37"
      assigns(:loan).should be(mock_loan)
    end
  end

  describe "GET new" do
    it "assigns a new loan as @loan" do
      Loan.stub(:new) { mock_loan }
      get :new
      assigns(:loan).should be(mock_loan)
    end
  end

  describe "GET edit" do
    it "assigns the requested loan as @loan" do
      Loan.stub(:find).with("37") { mock_loan }
      get :edit, :id => "37"
      assigns(:loan).should be(mock_loan)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created loan as @loan" do
        Loan.stub(:new).with({'these' => 'params'}) { mock_loan(:save => true) }
        post :create, :loan => {'these' => 'params'}
        assigns(:loan).should be(mock_loan)
      end

      it "redirects to the created loan" do
        Loan.stub(:new) { mock_loan(:save => true) }
        post :create, :loan => {}
        response.should redirect_to(loan_url(mock_loan))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved loan as @loan" do
        Loan.stub(:new).with({'these' => 'params'}) { mock_loan(:save => false) }
        post :create, :loan => {'these' => 'params'}
        assigns(:loan).should be(mock_loan)
      end

      it "re-renders the 'new' template" do
        Loan.stub(:new) { mock_loan(:save => false) }
        post :create, :loan => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested loan" do
        Loan.should_receive(:find).with("37") { mock_loan }
        mock_loan.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :loan => {'these' => 'params'}
      end

      it "assigns the requested loan as @loan" do
        Loan.stub(:find) { mock_loan(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:loan).should be(mock_loan)
      end

      it "redirects to the loan" do
        Loan.stub(:find) { mock_loan(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(loan_url(mock_loan))
      end
    end

    describe "with invalid params" do
      it "assigns the loan as @loan" do
        Loan.stub(:find) { mock_loan(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:loan).should be(mock_loan)
      end

      it "re-renders the 'edit' template" do
        Loan.stub(:find) { mock_loan(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested loan" do
      Loan.should_receive(:find).with("37") { mock_loan }
      mock_loan.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the loans list" do
      Loan.stub(:find) { mock_loan }
      delete :destroy, :id => "1"
      response.should redirect_to(loans_url)
    end
  end

end
