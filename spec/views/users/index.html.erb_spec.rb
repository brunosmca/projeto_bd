require 'spec_helper'

describe "users/index.html.erb" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :login => "Login",
        :password => "Password",
        :nome => "Nome",
        :sexo => "Sexo",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :salario => 1,
        :administrador => false
      ),
      stub_model(User,
        :login => "Login",
        :password => "Password",
        :nome => "Nome",
        :sexo => "Sexo",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :salario => 1,
        :administrador => false
      )
    ])
  end

  it "renders a list of users" do
    render
    rendered.should have_selector("tr>td", :content => "Login".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Password".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Nome".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Sexo".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Endereco".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Telefone".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => false.to_s, :count => 2)
  end
end
