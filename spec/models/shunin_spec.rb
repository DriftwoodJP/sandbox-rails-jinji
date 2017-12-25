require 'rails_helper'

describe Shunin do
  it "returns yakushoku as '主任'" do
    shain = described_class.new
    expect(shain.yakushoku).to eq '主任'
  end

  it "returns salary of '主任'" do
    shain = described_class.new(kihonkyu: 100000)
    expect(shain.salary).to eq 201_000
  end
end
