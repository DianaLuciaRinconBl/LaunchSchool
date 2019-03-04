def prompt(message)
  puts("=> #{message}")
end

def validate_number?(amount)
  amount.empty? == false && amount.to_i > 0
end

prompt "Welcome to the Mortgage Calculator"
prompt "----------------------------------"

loop do
  loan_amount = ''
  loop do
    prompt "Please enter the amount of the loan: "
    loan_amount = gets.chomp

    if validate_number?(loan_amount)
      break
    else
      prompt "Please make sure you enter a valid loan amount"
    end
  end

  percentage_rate = ''
  loop do
    prompt "Please enter the annual interest rate: "
    percentage_rate = gets.chomp

    percentage_rate.delete!("%") if percentage_rate.include?("%")

    if validate_number?(percentage_rate)
      break
    else
      prompt "Please make sure you enter a valid number"
    end
  end

  loan_duration_years = ''
  loop do
    prompt "Please enter the loan duration in years: "
    loan_duration_years = gets.chomp

    if validate_number?(loan_duration_years)
      break
    else
      prompt "Please enter a valid number for the duration of the loan"
    end
  end

  annual_percentage_rate = percentage_rate.to_f / 100
  montly_interest = annual_percentage_rate / 12
  loan_duration_months = loan_duration_years.to_i * 12

  montly_payment = loan_amount.to_f *
                   (montly_interest /
                   (1 - (1 + montly_interest)**-loan_duration_months.to_i))

  prompt "Your montly payment is $#{montly_payment.to_i}"

  prompt "Would you like to start a Mortgage calculation again: (y)"
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for using the Mortgage Calculator"
prompt "Good bye!!!"
