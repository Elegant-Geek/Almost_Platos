#return unless Rails.env.production?
module Rails
    module ConsoleMethods
      def self.included(_base)
        puts 'Hello, dev! :D'
        puts "Welcome to the #{Rails.env} environment!"
        print 'Enter your Admin email: '
  
        email = gets
        unless user = User.find_by(email: email.strip)
            puts "User not found! Exiting..."
            exit
        end
  
        unless user.admin? 
          puts 'Admin not found! Exiting...'
          exit
        end
  
        print 'Enter your password: '
        pass = IO::console.getpass
        if user.authenticate(pass.strip)
          puts "\nWelcome, #{user.email}!"
        else
          puts 'Provided password is incorrect! Exiting...'
          exit
        end
      end
    end
  end