require 'spec_helper'

describe Post do
  describe :validation do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }

    it { should validate_uniqueness_of(:title) }

    it { should_not allow_value("blah").for(:content) }
    it { should allow_value("blah blah").for(:content) }
  end
end