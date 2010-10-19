require 'spec_helper'

describe "users/new.html.erb" do
  before(:each) do
    assign(:user, stub_model(User,
      :new_record? => true,
      :login => "MyString",
      :password => "MyString",
      :nome => "MyString",
      :sexo => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :salario => 1,
      :administrador => false
    ))
  end

  it "renders new user form" do
    render

    rendered.should have_selector("form", :action => users_path, :method => "post") do |form|
      form.should have_selector("input#user_login", :name => "user[login]")
      form.should have_selector("input#user_password", :name => "user[password]")
      form.should have_selector("input#user_nome", :name => "user[nome]")
      form.should have_selector("input#user_sexo", :name => "user[sexo]")
      form.should have_selector("input#user_endereco", :name => "user[endereco]")
      form.should have_selector("input#user_telefone", :name => "user[telefone]")
      form.should have_selector("input#user_salario", :name => "user[salario]")
      form.should have_selector("input#user_administrador", :name => "user[administrador]")
    end
  end
end
