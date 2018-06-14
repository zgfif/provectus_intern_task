# Provectus test internship app (ruby)

##__A brief description__

This app is developed to work with ongoing events (authenticated user can create/edit/destroy events). The app uses Ruby on Rails framework. I use here MVC pattern. The app has registration feature via devise gem and Omniauth-google-oauth2 gem (via Goolge account). A user also can search by tag and title (I'm planning add search by scheduled date). App has basic test coverege through Rspec. 

##__Installation__

###Configuration requirements:

* *ruby 2.4.2  or newer;*

* *ruby on rails 5.1 or newer;*

* *postgresql db (production and development).*

You can view the installation tutorial guide [Setup Ruby On Rails](https://gorails.com/setup/ubuntu/18.10)

###__The app uses such environment variables:__

for sign in via Goolge account:

GOOGLE_CLIENT_ID

GOOGLE_CLIENT_SECRET

for sending e-mail confirmations via gmail account:

SENDMAIL_PASSWORD

SENDMAIL_USERNAME


After deployment on server you should run commands:

rake db:reset

rake db:migrate

## 