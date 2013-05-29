require 'spec_helper'

describe Subscription do
  # More complex validations: write a custom validation helper.
  it { should_not allow_value("needs_to_be_a_date").for(:renew_date) }
  it { should allow_value(DateTime.now.to_s).for(:renew_date) }


    # Implement a test that checks whether
    # Subscription belongs to Group
    it { should belong_to(:group) }


    # Implement a test that checks whether
    # Subscription belongs to User
    it { should belong_to(:user) }

end
