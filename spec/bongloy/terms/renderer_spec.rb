require 'spec_helper'

describe Bongloy::Terms::Renderer do
  describe "#terms(country, locale)" do
    it { expect(subject.terms).to be_a(String) }
  end

  describe "#privacy(country, locale)" do
    it { expect(subject.privacy).to be_a(String) }
  end
end
