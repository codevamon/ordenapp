require 'rails_helper'

RSpec.describe "subsidiaries/edit", type: :view do
  before(:each) do
    @subsidiary = assign(:subsidiary, Subsidiary.create!(
      :status => nil,
      :name => "MyString",
      :phone => "MyString",
      :address => "MyString",
      :email => "MyString",
      :identification => "MyString"
    ))
  end

  it "renders the edit subsidiary form" do
    render

    assert_select "form[action=?][method=?]", subsidiary_path(@subsidiary), "post" do

      assert_select "input[name=?]", "subsidiary[status_id]"

      assert_select "input[name=?]", "subsidiary[name]"

      assert_select "input[name=?]", "subsidiary[phone]"

      assert_select "input[name=?]", "subsidiary[address]"

      assert_select "input[name=?]", "subsidiary[email]"

      assert_select "input[name=?]", "subsidiary[identification]"
    end
  end
end
