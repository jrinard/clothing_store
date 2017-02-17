require 'rails_helper'

# unit testing spec
describe Clothing do
  it { should validate_presence_of :name }
  it { should belong_to :user }
end
