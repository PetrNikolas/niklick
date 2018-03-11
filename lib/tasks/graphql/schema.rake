namespace :graphql do
  namespace :schema do
    directory 'data'
    desc 'Dump GraphQL API schema to data/schema.graphql.'
    task dump: [:environment, 'data'] do
      File.open('data/schema.graphql', 'w') do |f|
        f.write(Schema.to_definition)
        puts "Dumped schema to #{f.path}."
      end
    end
  end
end
