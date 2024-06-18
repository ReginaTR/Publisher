require 'rails_helper'

RSpec.describe "assemblies/new", type: :view do
  before(:each) do
    assign(:assembly, Assembly.new(
      assembly_name: "MyString"
    ))
  end

  it "renders new assembly form" do
    render

    assert_select "form[action=?][method=?]", assemblies_path, "post" do

      assert_select "input[name=?]", "assembly[assembly_name]"
    end
  end
end
