require 'dockingstation'
require 'bike'

describe DockingStation do
  # it { is_expected.to respond_to :release_bike }

  # it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike).to respond_to :working?
  # end

  # it { is_expected.to respond_to(:dock).with(1).argument}

  # it 'returns docked bikes' do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.bike).to eq([bike])
  # end

  # it 'raises an error when empty' do
  #   expect { subject.release_bike }.to raise_error 'doesnt exist'
  # end

  # describe '#dock' do 
  #   it 'already contains a bike' do
  #     subject.dock(Bike.new)
  #     expect {subject.dock Bike.new}.to raise_error 'capacity full'
  #   end
  # end

  describe '#dock' do
    it 'raises dock is full' do 
      (DockingStation::DEFAULT_CAPACITY).times { subject.dock Bike.new} 
      expect { subject.dock Bike.new }.to raise_error 'docking station is full'
    end
  end

  
  describe '#initialize' do
    it 'allows user to set capacity' do 
      dockingstation = DockingStation.new(30)
      expect(dockingstation.capacity).to eq(30)
  end

  it 'sets default capacity when no parameters' do
    dockingstation = DockingStation.new
    expect(dockingstation.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  end
  end

  it 'accepts broken bikes and working bikes' do
    subject.dock(Bike.new)
		expect(subject.dock Bike.new ).to (eq subject.bikes)
		expect(subject.dock (Bike.new).broken?).to (eq subject.bikes)
	end


end
