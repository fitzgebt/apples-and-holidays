require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash[:winter][:christmas] << supply
holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |season, holidays_hash|
    if season == :winter
      temp_supply = []
      holidays_hash.each do |holiday, supply|
        
        if holiday == :christmas
            temp_supply.push(supply)
        elsif holiday == :new_years
            temp_supply.push(supply)        
        end       
      end
      return temp_supply.join
    end
  end
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts season.to_s.capitalize << ":"
    holidays.each do |holiday, supplies|
      

      if supplies.length != 0
        supplies_to_list = supplies.join(", ")
        if holiday.to_s.include? "_"
          puts "  " + holiday.to_s.gsub(/[_]/, " ").split(/ |\_/).map(&:capitalize).join(" ") << ": " + supplies_to_list
        elsif
            puts "  " + holiday.to_s.capitalize << ": " + supplies_to_list
        end
      else
        puts holiday.to_s.capitalize << ": " + supplies[0]
      end

    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  temp_array = []
    holiday_hash.each do |season, holidays|
  
      holidays.each do |holiday, supply|
        if supply.include? "BBQ"
          temp_array << holiday
        end
      end
  
    end
    temp_array
  end







