# encoding: utf-8

class Generetta
  def self.dump
    GenerettaModel.find_each do |model|
      filename = "#{Rails.root.to_path}/spec/models/#{model.title.tableize}_spec.generetta.rb"
      File.open(filename,"w") do |io|
        io<< "#encoding: utf-8\n"
        io<< model.to_test(:rspec)
      end
    end
    #GenerettaController.find_each do |model|
    #  filename = "#{Rails.root.to_path}/spec/models/#{model.title.tableize}_spec.generetta.rb"
    #  File.open(filename,"w") do |io|
    #    io<< model.to_test(:rspec)
    #  end
    #end
  end
end
