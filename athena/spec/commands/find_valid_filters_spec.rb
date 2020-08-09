require 'rails_helper'

RSpec.describe Datasets::FindValidFilters do
	subject { described_class.new(rows).call }
	let(:dataset) { create(:dataset) }
	let(:temperatures) { :valid_temperatures }
	let(:angles) { :valid_angles }
	let(:fields) { :valid_fields }


	describe "#call" do
		context 'with a small random assortment of rows' do
			subject { described_class.new(rows).call.keys }
			let(:rows) { create_list(:row, 2, dataset: dataset) }

			it { is_expected.to include temperatures }
			it { is_expected.to include angles }
			it { is_expected.to include fields }
		end

		context 'a random assortment of rows' do
			let(:rows) { create_list(:row, 20, dataset: dataset) }
			let(:unique_temperatures) { rows.pluck(:set_temperature).uniq }
			let(:unique_angles) { rows.pluck(:set_angle).uniq }
			let(:unique_fields) { rows.pluck(:set_field).uniq }


			it 'contains the valid temperatures' do
				expect(subject[temperatures]).to eq unique_temperatures
			end

			it 'contains the valid angles' do
				expect(subject[angles]).to eq unique_angles
			end

			it 'contains the valid fields' do
				expect(subject[fields]).to eq unique_fields
			end
		end
	end
end