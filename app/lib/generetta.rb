class Generetta
  def self.dump
    filename = "#{Rails.root.to_path}/spec/models/hoge.generetta.rb"
    File.open(filename,"w") do |io|
      GenerettaContext.find_each do |context|
        io<< self.template(context)
      end
    end
  end

  def self.template(context)
    template=<<EOF
context "#{context.description}" do
  #{self.cases(context.cases)}
end
EOF
  end

  def self.cases(cases)
    cases.map do |cas|
      <<IT
it "#{cas.description}" do
        #{cas.content}
end
IT
    end.join("\n")
  end
end
