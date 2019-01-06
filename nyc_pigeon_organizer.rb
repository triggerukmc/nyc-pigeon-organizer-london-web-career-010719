

def nyc_pigeon_organizer(input)
  pigeon_data = {}
   	  input.each do |attribute, data|
    data.each do |color, names|
      names.each do |name|
        if pigeon_data[name]
          if pigeon_data[name][attribute]
            pigeon_data[name][attribute] << color.to_s
          else
            pigeon_data[name][attribute] = [color.to_s]
          end
        else
          pigeon_data[name] = {attribute => [color.to_s]}
        end
      end
    end
  end
  pigeon_data
end

