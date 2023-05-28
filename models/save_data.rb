require "json"
require "fileutils"

class SaveData 
  def json_file_exist(filename)
    FileUtils.mkdir_p("./data")
    FileUtils.touch("./data/patience.json") if !File.exist?("./data/patience.json") && filename == "patience"
  end

  def save_patience(patience)
    patiece_arr = []
    patience.each do |pat| 
      patiece_arr << {
        name: pat.name,
        age: pat.age,
        address: pat.address 
      }
    end
    
    json_file_exist("patience")
    File.write("./data/patience.json", JSON.pretty_generate(patiece_arr))
  end
end