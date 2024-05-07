# Student name: Chris Smith
# Student ID: 0406238
# Course: WEBD-3011 (255589) Agile Full Stack Web Development
# Instructor: Diogo Iwasaki
# Date: May 7th, 2024

#ASSIGNMENT INSTRUCTIONS
# 3) Do some research online to figure out how to read keyboard input from Ruby and how to convert strings into floats.
# Currently the subtotal is hard-coded into your program. Update your code so that the user is asked to type in the sub total. Ensure that you convert what they provide into a float before using it in your calculations.

puts "Please enter your subtotal" #request a subtotal from the user via user input.
sub_total = gets.to_f
GST_RATE = 0.05
PST_RATE = 0.07
sub_total_GST = (sub_total*GST_RATE).round(2)
sub_total_PST = (sub_total*PST_RATE).round(2)
grand_total = sub_total+sub_total_GST+sub_total_PST
puts "Subtotal: $#{sub_total}" #print the subtotal to the console
puts "PST: $#{sub_total_PST} - #{(PST_RATE*100).to_i}%" #print the % of the PST and the subtotal's PST to the console
puts "GST: $#{sub_total_GST} - #{(GST_RATE*100).to_i}%" #print the % of the GST and the subtotal's GST to the console
puts "Grand Total: $#{grand_total.round(2)}" #print out the grand total to the console (grand total = subtotal+GST+PST)
case #Print 1 of 3 comments to the console based on the grand total
when grand_total <= 5 #Pocket change when grand total is less than $5
    puts"Pocket Change"
when ((grand_total > 5) && (grand_total < 20)) #Wallet Time when grand total is between $5 and $20
    puts"Wallet Time"
else #Charge it when grand total is above $20
    puts"Charge it"
end