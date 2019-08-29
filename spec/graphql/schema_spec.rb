require 'rails_helper'

describe BlogSchema do
  # These tests ensure that the schema loads properly. There can be issues with the
  # autoloading in Rails.

  subject { GraphQL::Schema::Printer.print_schema(described_class) }

  it 'renders the full schema' do
    expect(subject).to_not be_empty
  end
end