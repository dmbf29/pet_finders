class Pet < ApplicationRecord
  validates :name, presence: true
  SPECIES = %w(dog cat donkey bird fox whale)
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    return 0 unless found_on

    (Date.today - found_on).to_i
  end
end
