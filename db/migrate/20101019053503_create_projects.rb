class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :nome
      t.datetime :data_inicial
      t.datetime :data_final
    end
  end

  def self.down
    drop_table :projects
  end
end
