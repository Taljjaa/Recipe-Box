class CreateUsersRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :users_recipes do |t|
      t.integer :user_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
