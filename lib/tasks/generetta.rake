# encoding: utf-8

#require 'flextures/flextures'

namespace :test do
  namespace :generetta do
    desc "Dump data to csv format"
    task :dump => :environment do
      p :dump
      Generetta.dump      
    end
  end
end
