require_relative '../../spec_helper.rb'
require_relative '../../factories/label.rb'

describe 'PickpointApi::Label' do
  it 'should generate barcode' do
    @label = build(:label)
    expect{barcode = @label_barcode64}.not_to raise_error
  end

  it 'should render single label' do
    @label = build(:label)
    html = nil
    expect{html = PickpointApi::Label.render(@label)}.not_to raise_error
  end

  it 'should render multiple labels' do
    @labels = (1..10).map{build(:label)}
    html = nil
    expect{html = PickpointApi::Label.render(@labels)}.not_to raise_error
  end
end
