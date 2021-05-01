class CreateVisaDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :visa_details do |t|
      t.boolean   :used_pen
      t.boolean   :outside_country
      t.boolean   :inside_country
      t.date      :visiting_from
      t.date      :visiting_to
      t.boolean   :is_more_occasion
      t.text      :types_of_occasion
      t.date      :date_of_extend
      t.text      :detailed_description
      t.string    :image_file
      t.string    :name_of_city
      t.string    :name_of_state
      t.string    :name_of_country
    end
  end
end
