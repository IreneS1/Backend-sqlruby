# Constants 
DAYS_PER_LEAP = 366
DAYS_PER_YEAR = 365
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
SECONDS_PER_MINUTE = 60
#MINUTES_IN_DECADE = 5259492
#SECONDS_IN_YEAR = 31556952

def leap(year)
    if year > 3
        leap_years = year / 4.0
        leap_years = leap_years.ceil
    end
    return leap_years
end   

# Ask user for number of years
puts "Enter a number of years to convert to hours:"  
years = gets.chomp # this returns a string  
years = years.to_i # this converts a string to an integer  
# hours = years * DAYS_PER_YEAR * HOURS_PER_DAY (I used this calculation first, but wanted to implement leap years)
leap = leap(years)
standard = years - leap
leap_calculation = DAYS_PER_LEAP * HOURS_PER_DAY
stan_calculation = DAYS_PER_YEAR * HOURS_PER_DAY
total_hours = (leap_calculation * leap) + (stan_calculation * standard)
# puts "There are #{hours} hours in #{years} years." 
puts "There are #{total_hours} hours in #{years} years."

# # Ask user for number of decades
puts "Enter a number of decades to convert to minutes:"
decades = gets.chomp # chomp to remove \n
decades = decades.to_i # convert to integer
d = decades * 10  # convert decades to number of years so I can pass into leap method
#minutes = decades * MINUTES_IN_DECADE (I used this calculation first, but wanted to implement leap years)
leap_y = leap(d)
stan_years = d - leap_y
leap_cal = DAYS_PER_LEAP * HOURS_PER_DAY * MINUTES_PER_HOUR
stan_calc = DAYS_PER_YEAR * HOURS_PER_DAY * MINUTES_PER_HOUR
total_minutes = (leap_cal * leap_y) + (stan_calc * stan_years)
# Display minutes in decadses
#puts "There are #{minutes} minutes in #{decades} decades."
puts "There are #{total_minutes} minutes in #{decades} decades."

# Ask user for their age
puts "Enter your age to see how many seconds you've been alive:"
age = gets.chomp # chomp to remove \n
age = age.to_i # convert to integer
# seconds = age * SECONDS_IN_YEAR (I used this calculation first, but wanted to implement leap years)
leap_year = leap(age)
standard_year = age - leap_year
cal_leap = DAYS_PER_LEAP * HOURS_PER_DAY * MINUTES_PER_HOUR * SECONDS_PER_MINUTE
cal_standard = DAYS_PER_YEAR * HOURS_PER_DAY * MINUTES_PER_HOUR * SECONDS_PER_MINUTE
total_seconds = (cal_leap * leap_year) + (cal_standard * standard_year)
# Display seconds in x age
#puts "You've been alive for #{seconds} seconds."
puts "You've been alive for #{total_seconds} seconds."

