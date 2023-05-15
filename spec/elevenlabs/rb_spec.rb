# frozen_string_literal: true

RSpec.describe Elevenlabs::Rb do
  it "has a version number" do
    expect(Elevenlabs::Rb::VERSION).not_to be nil
  end

  it "throws an error if instantiated without an api_key" do
    # expect(Elevenlabs::Rb.new).to raise(ArgumentError)
  end
end
