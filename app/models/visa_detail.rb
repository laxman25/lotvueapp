class VisaDetail < ApplicationRecord
  has_and_belongs_to_many :durations
  has_one   :user
  accepts_nested_attributes_for :user

  validates :used_pen, :detailed_description, :name_of_city, :name_of_state, :name_of_country, presence: true

  validates :visiting_from, :visiting_to, presence: true, if: Proc.new { |vd| vd.outside_country}
  validates :date_of_extend, presence: true, if: Proc.new { |vd| vd.inside_country}

  validates :types_of_occasion, presence: true, if: Proc.new { |vd| vd.is_more_occasion}

end
