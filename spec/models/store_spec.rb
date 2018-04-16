require 'rails_helper'

describe Store do
  it { should validate_presence_of :name }
end
