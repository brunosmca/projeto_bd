require 'spec_helper'

describe "users/show.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :login => "Login",
      :password => "Password",
      :nome => "Nome",
      :sexo => "Sexo",
      :endereco => "Endereco",
      :telefone => "Telefone",
      :salario => 1,
      :administrador => false
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Login".to_s)
    rendered.should contain("Password".to_s)
    rendered.should contain("Nome".to_s)
    rendered.should contain("Sexo".to_s)
    rendered.should contain("Endereco".to_s)
    rendered.should contain("Telefone".to_s)
    rendered.should contain(1.to_s)
    rendered.should contain(false.to_s)
  end
end
