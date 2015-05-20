class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name
      t.text :comment
      t.string :address

      t.timestamps null: false
    end
  end
end
