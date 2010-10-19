class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :nome
      t.string :sexo
      t.datetime :data_nascimento
      t.string :endereco
      t.string :telefone
      t.datetime :data_contratacao
      t.integer :salario
      t.string :habilidades
      t.boolean :administrador
    end
  end

  def self.down
    drop_table :users
  end
end
