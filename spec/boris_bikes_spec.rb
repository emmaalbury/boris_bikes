require "boris_bikes"

describe DockingStation do

  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }

    it 'releases working bike' do
      subject.dock(Bike.new)
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it 'raises error if empty' do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end
  end

  describe '#dock' do
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'raises error if full' do
      subject.dock(Bike.new)
      expect { subject.dock(Bike.new) }.to raise_error("Dock full")
    end
  end

  #  it { is_expected.to respond_to(:dock).with(1).argument }
  #    it { is_expected.to respond_to(:bike) }
#  end
end


# describe DockingStation do
#   it { is_expected.to respond_to :release_bike }
# end


# # spec/string_calculator_spec.rb
# describe StringCalculator do
#
#   describe ".add" do
#     context "given an empty string" do
#       it "returns zero" do
#         expect(StringCalculator.add("")).to eql(0)
#       end
#     end
#   end
# end
