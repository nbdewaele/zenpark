require 'spec_helper'

describe Notifications do
  it 'should have access to URL helpers' do
    lambda { gadgets_url }.should_not raise_error
  end
end