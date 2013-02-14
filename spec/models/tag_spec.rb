require 'spec_helper'

describe Tag do

  describe :validation do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).scoped_to(:post_id) }
  end

  describe :relation do
    it { should belong_to(:post) }
  end

end
