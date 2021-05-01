class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer   :visa_detail_id
      t.string    :family_name
      t.text      :given_names
      t.string    :gender
      t.date      :date_of_birth
      t.integer   :passport_number
      t.string    :country_of_passport
      t.string    :passport_nationality
      t.date      :date_of_issue
      t.date      :date_of_expired
      t.text      :issueing_authority
    end
  end
end
