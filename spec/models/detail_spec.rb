require 'rails_helper'

describe Detail do
  it { should validate_presence_of :address }
  it { should validate_presence_of :phone }
  it { should validate_presence_of :website }
  it { should validate_presence_of :hours }
  it { should belong_to :store }
end
