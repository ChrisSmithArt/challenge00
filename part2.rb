# Student name: Chris Smith
# Student ID: 0406238
# Course: WEBD-3011 (255589) Agile Full Stack Web Development
# Instructor: Diogo Iwasaki
# Date: May 7th, 2024

#ASSIGNMENT INSTRUCTIONS
# 2) Update your Ruby program from question one such that it prints a short message after the grand total.
# If the grand total is equal to or less than $5.00 then message should be: "Pocket Change"
# If the grand total is greater than $5.00 but less than $20 the message should be: "Wallet Time"
# If the grand total is equal to or greater than $20 the message should be: "Charge It!"

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
    case #Print 1 of 3 comments to the console based on the grand total
    when grand_total <= 5 #Pocket change when grand total is less than $5
        puts"Pocket Change"
    when ((grand_total > 5) && (grand_total < 20)) #Wallet Time when grand total is between $5 and $20
        puts"Wallet Time"
    else #Charge it when grand total is above $20
        puts"Charge it"
    end