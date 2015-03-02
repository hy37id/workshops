require 'spec_helper'

describe Category do
  subject { create(:category) }
  it { should validate_uniqueness_of(:name) }
end
