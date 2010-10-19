class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.string :titulo
      t.string :descricao
      t.datetime :data_inicial
      t.datetime :date_prev_final
      t.integer :num_horas_gastas
      t.string :prioridade
      t.string :tipo
      t.integer :project_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :activities
  end
end
