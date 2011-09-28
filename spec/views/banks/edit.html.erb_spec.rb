require 'spec_helper'

describe "banks/edit.html.erb" do
  before(:each) do
    @bank = assign(:bank, stub_model(Bank,
      :new_record? => false,
      :name => "MyString"
    ))
  end

  it "renders the edit bank form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => bank_path(@bank), :method => "post" do
      assert_select "input#bank_name", :name => "bank[name]"
    end
  end
end
