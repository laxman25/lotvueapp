class DurationsVisaDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :durations_visa_details do |t|
      t.integer         :duration_id
      t.integer         :visa_detail_id
    end
  end
end
