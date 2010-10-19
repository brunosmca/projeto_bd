require 'spec_helper'

describe "projects/index.html.erb" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :nome => "Nome"
      ),
      stub_model(Project,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of projects" do
    render
    rendered.should have_selector("tr>td", :content => "Nome".to_s, :count => 2)
  end
end
