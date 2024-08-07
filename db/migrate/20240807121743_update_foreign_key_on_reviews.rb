class UpdateForeignKeyOnReviews < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :reviews, :restaurants
    add_foreign_key :reviews, :restaurants, on_delete: :cascade
  end
end
