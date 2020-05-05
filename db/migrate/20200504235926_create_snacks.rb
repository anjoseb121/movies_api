# frozen_string_literal: true

class CreateSnacks < ActiveRecord::Migration[6.0]
  def change
    create_table :snacks do |t|
      t.string :name

      t.timestamps
    end
  end
end
