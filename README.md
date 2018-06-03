Running test1 in local environment.

Prepare environment:
  - ruby 2.4.2
  - mysql 5.7.22
  - rails 5.1.6
  - bundle install
  - Modify information in config/database.yml
  - bundle exec rake db:create
  - bundle exec rake db:migrate
  
Step 1:
  - Start app1 in port 3000
  - whenever --update-crontab --set environment=development
  
Step 2:
  - Start app2 in port 3001
  - whenever --update-crontab --set environment=development
  
Step 3: Start app3 in port 3002

