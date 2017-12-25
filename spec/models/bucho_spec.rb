require 'rails_helper'

describe Bucho do
  it "returns yakushoku as '部長'" do
    shain = described_class.new
    expect(shain.yakushoku).to eq '部長'
  end

  it "returns salary of '部長'" do
    shain = described_class.new(kihonkyu: 100000)
    expect(shain.salary).to eq 300_000
  end
end
