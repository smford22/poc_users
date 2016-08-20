# # encoding: utf-8

# Inspec test for recipe poc_users::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe directory('c:\Users\Administrator\chef-1\.delivery') do
  it { should exist }
end
