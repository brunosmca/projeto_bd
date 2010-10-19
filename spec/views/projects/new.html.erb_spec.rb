require 'spec_helper'

describe "projects/new.html.erb" do
  before(:each) do
    assign(:project, stub_model(Project,
      :new_record? => true,
      :nome => "MyString"
    ))
  end

  it "renders new project form" do
    render

    rendered.should have_selector("form", :action => projects_path, :method => "post") do |form|
      form.should have_selector("input#project_nome", :name => "project[nome]")
    end
  end
end
