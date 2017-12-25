require 'rails_helper'

describe Tanto do
  it "returns yakushoku as '担当'" do
    shain = described_class.new
    expect(shain.yakushoku).to eq '担当'
  end

  it "returns salary of '担当'" do
    shain = described_class.new(kihonkyu: 100000)
    expect(shain.salary).to eq 100_000
  end
end
