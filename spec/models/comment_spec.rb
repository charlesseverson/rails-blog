require 'spec_helper'

describe Comment do

  describe :validation do
    it { should validate_presence_of(:commenter) }
    it { should validate_presence_of(:body) }
  end

  describe :relation do
    it { should belong_to(:post) }
  end

end
