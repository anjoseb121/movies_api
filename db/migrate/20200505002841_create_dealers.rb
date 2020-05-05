# frozen_string_literal: true

class CreateDealers < ActiveRecord::Migration[6.0]
  def change
    create_table :dealers do |t|
      t.string :name

      t.timestamps
    end
  end
end
