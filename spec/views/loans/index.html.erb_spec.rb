require 'spec_helper'

describe "loans/index.html.erb" do
  before(:each) do
    assign(:loans, [
      stub_model(Loan,
        :type => "Type",
        :interest_rate => "9.99",
        :state => "State"
      ),
      stub_model(Loan,
        :type => "Type",
        :interest_rate => "9.99",
        :state => "State"
      )
    ])
  end

  it "renders a list of loans" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
