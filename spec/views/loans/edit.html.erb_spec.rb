require 'spec_helper'

describe "loans/edit.html.erb" do
  before(:each) do
    @loan = assign(:loan, stub_model(Loan,
      :new_record? => false,
      :type => "MyString",
      :interest_rate => "9.99",
      :state => "MyString"
    ))
  end

  it "renders the edit loan form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => loan_path(@loan), :method => "post" do
      assert_select "input#loan_type", :name => "loan[type]"
      assert_select "input#loan_interest_rate", :name => "loan[interest_rate]"
      assert_select "input#loan_state", :name => "loan[state]"
    end
  end
end
