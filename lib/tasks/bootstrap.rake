# require_relative '../bootstrap.rb'

desc "Bootstrap data into database"
task :bootstrap => [:environment] do
  Bootstrap.run
end