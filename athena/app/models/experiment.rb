class Experiment < ApplicationRecord
  belongs_to :dataset
  has_many :rows
end
