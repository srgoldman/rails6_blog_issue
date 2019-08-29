GraphQL::Errors.configure(BlogSchema) do
  rescue_from GraphQL::UnauthorizedError do |e|
    GraphQL::ExecutionError.new e.message
  end
end