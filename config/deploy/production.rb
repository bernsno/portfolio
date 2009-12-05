role :db, "67.23.3.38", :primary => true
set(:user) { "prod" }
set(:domain) { "67.23.3.38" }
ssh_options[:port] = 45001