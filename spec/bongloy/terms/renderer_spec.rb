require "spec_helper"

module Bongloy
  module Terms
    RSpec.describe Renderer do
      it "renders the terms" do
        renderer = Renderer.new

        expect(renderer.render("payment_gateway/terms")).to be_a(String)
        expect(renderer.render("payment_gateway/prohibited_businesses")).to be_a(String)
        expect(renderer.render("payment_gateway/high_risk_mcc_categories")).to be_a(String)
        expect(renderer.render("issuing/cardholder_terms")).to be_a(String)
        expect(renderer.render("privacy")).to be_a(String)
      end

      it "renders english by default" do
        renderer = Renderer.new

        expect(renderer.render("payment_gateway/terms", locale: :km)).to be_a(String)
      end
    end
  end
end
