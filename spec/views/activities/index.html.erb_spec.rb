require 'spec_helper'

describe "activities/index.html.erb" do
  before(:each) do
    assign(:activities, [
      stub_model(Activity,
        :titulo => "Titulo",
        :descricao => "Descricao",
        :num_horas_gastas => 1,
        :prioridade => "Prioridade",
        :tipo => "Tipo",
        :project_id => 1,
        :user_id => 1
      ),
      stub_model(Activity,
        :titulo => "Titulo",
        :descricao => "Descricao",
        :num_horas_gastas => 1,
        :prioridade => "Prioridade",
        :tipo => "Tipo",
        :project_id => 1,
        :user_id => 1
      )
    ])
  end

  it "renders a list of activities" do
    render
    rendered.should have_selector("tr>td", :content => "Titulo".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Descricao".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Prioridade".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Tipo".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
