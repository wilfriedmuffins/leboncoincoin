require 'rails_helper'

RSpec.describe "sales/new", type: :view do
  before(:each) do
    assign(:sale, Sale.new(
      ad: nil,
      user: nil
    ))
  end

  it "renders new sale form" do
    render

    assert_select "form[action=?][method=?]", sales_path, "post" do

      assert_select "input[name=?]", "sale[ad_id]"

      assert_select "input[name=?]", "sale[user_id]"
    end
  end
end
