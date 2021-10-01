# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'The Catcher in the Rye', author: 'JD Salinger', price: '7.43', pub_date: '1951-7-16')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without a publish date' do
    subject.pub_date = nil
    expect(subject).not_to be_valid
  end
  
end