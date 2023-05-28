require_relative "patience"

class LoadData 
  def load_patience 
    patience = []

    return patience if !File.exist?("./data/patience.json")

    file = File.open("./data/patience.json")

    data = JSON.parse(file.read) 

    data.each do |dat| 
      patience << Patience.new(dat["name"], dat["age"], dat["address"])
    end
    file.close 
    patience
  end
end