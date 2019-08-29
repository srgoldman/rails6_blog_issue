require 'rails_helper'

describe 'Users Query' do
  it "loads all users" do
    query_string = <<-GRAPHQL
    query {
      users {
          id
          name
          }
        }
    GRAPHQL

    user = User.create(name: 'Test user', email: 'test@user.com')
    result = BlogSchema.execute(query_string, variables: {})

    user_result = result["data"]["users"].first
    # Make sure the query worked
    assert_equal user.id, user_result["id"].to_i
    assert_equal user.name, user_result['name']
  end
end