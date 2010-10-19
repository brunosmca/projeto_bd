require 'spec_helper'

describe "activities/new.html.erb" do
  before(:each) do
    assign(:activity, stub_model(Activity,
      :new_record? => true,
      :titulo => "MyString",
      :descricao => "MyString",
      :num_horas_gastas => 1,
      :prioridade => "MyString",
      :tipo => "MyString",
      :project_id => 1,
      :user_id => 1
    ))
  end

  it "renders new activity form" do
    render

    rendered.should have_selector("form", :action => activities_path, :method => "post") do |form|
      form.should have_selector("input#activity_titulo", :name => "activity[titulo]")
      form.should have_selector("input#activity_descricao", :name => "activity[descricao]")
      form.should have_selector("input#activity_num_horas_gastas", :name => "activity[num_horas_gastas]")
      form.should have_selector("input#activity_prioridade", :name => "activity[prioridade]")
      form.should have_selector("input#activity_tipo", :name => "activity[tipo]")
      form.should have_selector("input#activity_project_id", :name => "activity[project_id]")
      form.should have_selector("input#activity_user_id", :name => "activity[user_id]")
    end
  end
end
