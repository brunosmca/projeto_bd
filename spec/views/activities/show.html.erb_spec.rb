require 'spec_helper'

describe "activities/show.html.erb" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :titulo => "Titulo",
      :descricao => "Descricao",
      :num_horas_gastas => 1,
      :prioridade => "Prioridade",
      :tipo => "Tipo",
      :project_id => 1,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Titulo".to_s)
    rendered.should contain("Descricao".to_s)
    rendered.should contain(1.to_s)
    rendered.should contain("Prioridade".to_s)
    rendered.should contain("Tipo".to_s)
    rendered.should contain(1.to_s)
    rendered.should contain(1.to_s)
  end
end
