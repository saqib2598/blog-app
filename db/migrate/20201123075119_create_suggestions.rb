# frozen_string_literal: true

class CreateSuggestions < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestions do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
