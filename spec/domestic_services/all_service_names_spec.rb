require 'spec_helper'

describe UKMail::DomesticServices, '.all_service_names' do
  subject { described_class.all_service_names }

  it 'returns list of unique service names' do
    expect(subject).to match_array([
      'Next Day',
      'Next Day 09:00',
      'Next Day 10:30',
      'Next Day 12:00',
      'Afternoon',
      'Evening',
      'Saturday',
      'Saturday 09:00',
      'Saturday 10:30',
      'Timed Delivery',
      '48 Hour',
      '48 Hour Pack',
      '72 Hour',
      'Pallet 24 Hours',
      'Pallet 48 Hours',
      'Collection Point',
      'Collection Point 09:00',
      'Collection Point 12:00'
    ])
  end
end
