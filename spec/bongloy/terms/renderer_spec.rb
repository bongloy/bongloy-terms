require "spec_helper"

module Bongloy
  module Terms
    RSpec.describe Renderer do
      it "renders the terms" do
        renderer = Renderer.new

        expect(renderer.render("terms")).to be_a(String)
        expect(renderer.render("privacy")).to be_a(String)
        expect(renderer.render("prohibited_businesses")).to be_a(String)
        expect(renderer.render("high_risk_mcc_categories")).to be_a(String)
        expect(renderer.render("issuing_terms")).to be_a(String)
      end
    end
  end
end
