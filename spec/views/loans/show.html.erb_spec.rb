require 'spec_helper'

describe "loans/show.html.erb" do
  before(:each) do
    @loan = assign(:loan, stub_model(Loan,
      :type => "Type",
      :interest_rate => "9.99",
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Type/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/State/)
  end
end
