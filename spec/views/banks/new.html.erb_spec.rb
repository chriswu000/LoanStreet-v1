require 'spec_helper'

describe "banks/new.html.erb" do
  before(:each) do
    assign(:bank, stub_model(Bank,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new bank form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => banks_path, :method => "post" do
      assert_select "input#bank_name", :name => "bank[name]"
    end
  end
end
