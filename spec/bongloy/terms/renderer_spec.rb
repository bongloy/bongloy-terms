require 'spec_helper'

describe Bongloy::Terms::Renderer do
  it { expect(subject.render('terms')).to be_a(String) }
  it { expect(subject.render('privacy')).to be_a(String) }
  it { expect(subject.render('prohibited_businesses')).to be_a(String) }
  it { expect(subject.render('high_risk_mcc_categories')).to be_a(String) }
  it { expect(subject.render('fees_taxes')).to be_a(String) }
end
