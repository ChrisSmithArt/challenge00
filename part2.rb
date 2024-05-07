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