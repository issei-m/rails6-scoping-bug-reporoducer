require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'in scope excluding id=1' do
    let(:categories) { Category.where.not(id: 1).scoping { Category.all } }
    context 'the size of categories' do
      subject { categories.size }
      it { is_expected.to eq 2 }
    end
  end
end
