require 'rails_helper'

RSpec.describe Category, type: :model do

  context 'in scope excluding id=1' do

    context 'with the all categories' do
      let(:categories) { Category.where.not(id: 1).scoping { Category.all } }
      context 'the size of categories' do
        subject { categories.size }
        it { is_expected.to eq 5 }
      end
    end

    context 'with the all categories' do
      let(:parent) { Category.where.not(id: 1).scoping { Category.find_by(parent_id: 1).parent } }
      subject { parent }
      it { is_expected.to be_present }
    end

  end

end
