require 'spec_helper'

describe "loans/new.html.erb" do
  before(:each) do
    assign(:loan, stub_model(Loan,
      :type => "MyString",
      :interest_rate => "9.99",
      :state => "MyString"
    ).as_new_record)
  end

  it "renders new loan form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => loans_path, :method => "post" do
      assert_select "input#loan_type", :name => "loan[type]"
      assert_select "input#loan_interest_rate", :name => "loan[interest_rate]"
      assert_select "input#loan_state", :name => "loan[state]"
    end
  end
end
