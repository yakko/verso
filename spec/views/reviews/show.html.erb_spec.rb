require 'spec_helper'

describe "reviews/show.html.erb" do
  before(:each) do
    @review = assign(:review, stub_model(Review,
      :project => nil,
      :criou_user_id => 1,
      :criou_texto => "MyText",
      :corrigiu_user_id => 1,
      :corrigiu_texto => "MyText",
      :revisou_user_id => 1,
      :revisou_texto => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
