require "boris_bikes"


describe Bike do
  it "expect object Bike to respond to working" do
    expect(subject).to respond_to :working?
  end
end
