def check_password
    puts "Please enter your preferred Username:"
    username = gets.chomp
    puts "Please enter your preferred Password:"
    password = gets.chomp

    puts "To verify, please re-enter your password:"
    password_verify = gets.chomp

    until password == password_verify
        puts "Passwords do not match. Please re-enter your password:"
        password_verify = gets.chomp
    end

    puts "Account Created"

    puts "Please enter your username to log in:"
    login_username = gets.chomp
    puts "Please enter your password to log in:"
    login_password = gets.chomp

    until login_username == username && login_password == password
        puts "Incorrect username or password. Please try again."
        puts "Username:"
        login_username = gets.chomp
        puts "Password:"
        login_password = gets.chomp
    end

    puts "Login successful! Welcome back, #{username}."
end

check_password