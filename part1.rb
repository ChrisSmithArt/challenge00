# Student name: Chris Smith
# Student ID: 0406238
# Course: WEBD-3011 (255589) Agile Full Stack Web Development
# Instructor: Diogo Iwasaki
# Date: May 7th, 2024

#ASSIGNMENT INSTRUCTIONS
# ) Write a Ruby program to calculate the after tax value of a specific dollar amount. 
# Your program must:
# Include a comment block at the top of your file that includes your name.
# Store a dollar amount in a variable called "sub_total"
# Store the GST rate and PST rate in constants.
# Calculate and store the after tax amount in a variable called "grand_total".
# Generate output to the screen in the following format:
# Subtotal: $5.00
# PST: $0.35 - 7%
# GST: $0.25 - 5%
# Grand Total: $5.60
# This output will change when ever you run the program with a new value for sub_total or either of the tax constants.
# Note: Don't worry about trailing zeros for now. For example, Ruby will display the float 5.60 as 5.6. This is fine.

sub_total = 5.00
GST_RATE = 0.05
PST_RATE = 0.07
sub_total_GST = (sub_total*GST_RATE).round(2)
sub_total_PST = (sub_total*PST_RATE).round(2)
grand_total = sub_total+sub_total_GST+sub_total_PST

puts "Subtotal: $#{sub_total}" #print the subtotal to the console
puts "PST: $#{sub_total_PST} - #{(PST_RATE*100).to_i}%" #print the % of the PST and the subtotal's PST to the console
puts "GST: $#{sub_total_GST} - #{(GST_RATE*100).to_i}%" #print the % of the GST and the subtotal's GST to the console
puts "Grand Total: $#{grand_total.round(2)}" #print out the grand total to the console (grand total = subtotal+GST+PST)