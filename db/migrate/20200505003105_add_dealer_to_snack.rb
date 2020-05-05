# frozen_string_literal: true

class AddDealerToSnack < ActiveRecord::Migration[6.0]
  def change
    add_reference :snacks, :dealer, null: true, foreign_key: true
  end
end
