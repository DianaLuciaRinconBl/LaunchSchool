def prompt(message)
  puts("=> #{message}")
end

def valid_number(input)
  input.to_i.real != 0 || input.to_f.real != 0
end

def valid_loan_amount?(amount)
  !amount.empty? && amount.to_i > 0
end

def valid_apr?(amount)
  !amount.empty? && amount.to_f >= 0
end

def valid_loan_duration?(amount)
  !amount.empty? && amount.to_i == amount.to_f && amount.to_i > 0
end

prompt "Welcome to the Mortgage Calculator"
prompt "----------------------------------"

loop do
  loan_amount = ''
  loop do
    prompt "Please enter the amount of the loan: "
    loan_amount = gets.chomp

    if valid_loan_amount?(loan_amount) && valid_number(loan_amount)
      break
    else
      prompt "WARNING Please make sure entered a value and that it is positive"
    end
  end

  percentage_rate = ''
  loop do
    prompt "Please enter the annual interest rate: "
    percentage_rate = gets.chomp

    percentage_rate.delete!("%") if percentage_rate.include?("%")

    if valid_apr?(percentage_rate) && valid_number(percentage_rate)
      break
    else
      prompt "WARNING Please make sure entered a value and that it is positive"
    end
  end

  loan_duration_years = ''
  loop do
    prompt "Please enter the loan duration in years: "
    loan_duration_years = gets.chomp

    if valid_loan_duration?(loan_duration_years) && valid_number(loan_duration_years)
      break
    else
      prompt "WARNING Please make sure entered a value and that it is positive"
    end
  end

  annual_percentage_rate = percentage_rate.to_f / 100
  montly_interest = annual_percentage_rate / 12
  loan_duration_months = loan_duration_years.to_i * 12

  montly_payment = loan_amount.to_f *
                   (montly_interest /
                   (1 - (1 + montly_interest)**-loan_duration_months.to_i))

  prompt "Your montly payment is $#{montly_payment.to_i}"

  answer = ''
  prompt "Would you like to start a Mortgage calculation again: (yes or no)"
  loop do
    answer = gets.chomp

    if answer.downcase == 'yes'
      break
    elsif answer.downcase == 'no'
      break
    else
      prompt "Invalid input"
      prompt "Would you like to start a Mortgage calculation again: (yes or no)"
    end
  end

  break if answer.downcase == 'no'
end

prompt "Thank you for using the Mortgage Calculator"
prompt "Good bye!!!"
