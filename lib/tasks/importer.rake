namespace :iqvoc do

  namespace :import do

    desc 'Imports some ntriples data from a given url (URL=...). Use the parameter NAMESPACE=... to define the default namespace used in your data.'
    task :url => :environment do
      require 'iqvoc/skos_importer'

      raise "You have to specify an url to be import data. Example: rake iqvoc:import:url URL=... NAMESPACE=" unless ENV['URL']
      raise "You have to specify a default namespace to be import data. Example: rake iqvoc:import:url URL=... NAMESPACE=" unless ENV['NAMESPACE']
      Iqvoc::SkosImporter.new(open(URI.parse(ENV['URL']).to_s), URI.parse(ENV['NAMESPACE']).to_s)
    end

  end

end