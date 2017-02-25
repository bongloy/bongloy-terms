require 'spec_helper'

describe Bongloy::Terms::Renderer do
  include EnvHelpers

  describe "#terms(country, locale)" do
    it { expect(subject.terms).to be_a(String) }
  end

  describe "#privacy(country, locale)" do
    it { expect(subject.privacy).to be_a(String) }
  end

  describe "#prohibited_businesses(country, locale)" do
    it { expect(subject.prohibited_businesses).to be_a(String) }
  end

  describe "#fees_taxes(country, locale)" do
    it { expect(subject.fees_taxes).to be_a(String) }
  end

  [:terms, :privacy, :prohibited_businesses, :fees_taxes].each do |page|
    it { is_expected.to respond_to(:"render_#{page}?") }

    describe ".render_#{page}?" do
      let(:result) { described_class.public_send("render_#{page}?") }

      before do
        stub_env("BONGLOY_TERMS_RENDER_#{page.to_s.upcase}" => configuration)
      end

      context "not specified" do
        let(:configuration) { nil }
        it { expect(result).to eq(true) }
      end

      context "turned on" do
        let(:configuration) { "1" }
        it { expect(result).to eq(true) }
      end

      context "turned off" do
        let(:configuration) { "0" }
        it { expect(result).to eq(false) }
      end
    end
  end
end
