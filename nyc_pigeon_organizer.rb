require "pry"

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(input)
  pigeon_data = {}
   	  input.each do |attribute, data|
    data.each do |quality, names|
      binding.pry
      names.each do |name|
        if pigeon_data[name]
          if pigeon_data[name][attribute]
            pigeon_data[name][attribute] << quality.to_s
          else
            pigeon_data[name][attribute] = [quality.to_s]
          end
        else
          pigeon_data[name] = {attribute => [quality.to_s]}
        end
      end
    end
  end
  pigeon_data
end

nyc_pigeon_organizer(pigeon_data)