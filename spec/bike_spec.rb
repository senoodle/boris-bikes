require 'bike'
require 'dockingstation'

describe Bike do

  it { is_expected.to respond_to :working? }

end

describe '#report_broken' do
  it 'can be reported as broken' do
    bike = Bike.new
    expect(bike.report_broken).to eq(true)
  end
end