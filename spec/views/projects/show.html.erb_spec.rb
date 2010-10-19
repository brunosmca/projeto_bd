require 'spec_helper'

describe "projects/show.html.erb" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Nome".to_s)
  end
end
