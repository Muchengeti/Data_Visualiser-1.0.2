class Dataset < ApplicationRecord
  has_many :experiments, dependent: :destroy

  scope :latest, -> { select('DISTINCT ON ("figshare_id") *').order(:figshare_id, created_at: :desc, id: :desc) }
  scope :empty, -> { left_outer_joins(:rows).where(rows: { id:nil }) }

  def dataset_valid?
    !experiments.empty?
  end
end
