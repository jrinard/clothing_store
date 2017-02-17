require 'rails_helper'

# unit testing spec

describe Comment do
  it { should validate_presence_of :content }
  it { should belong_to :clothing }
end
