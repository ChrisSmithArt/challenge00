# 3) Do some research online to figure out how to read keyboard input from Ruby and how to convert strings into floats.

# Currently the subtotal is hard-coded into your program. Update your code so that the user is asked to type in the sub total. Ensure that you convert what they provide into a float before using it in your calculations.

puts "Please enter your subtotal"
sub_total = gets.to_f
GST_RATE = 0.05
PST_RATE = 0.07
sub_total_GST = (sub_total*GST_RATE).round(2)
sub_total_PST = (sub_total*PST_RATE).round(2)
grand_total = sub_total+sub_total_GST+sub_total_PST
puts "Subtotal: $#{sub_total}"
puts "PST: $#{sub_total_PST} - #{(PST_RATE*100).to_i}%"
puts "GST: $#{sub_total_GST} - #{(GST_RATE*100).to_i}%"
puts "Grand Total: $#{grand_total.round(2)}"
case 
when grand_total <= 5
    puts"Pocket Change"
when ((grand_total > 5) && (grand_total < 20))
    puts"Wallet Time"
else
    puts"Charge it"
end