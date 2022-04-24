# README
### INFORMATION
This is a project example on how to use turbo on rails

### CONFIG
The setups steps expect following tools installed on the system.
- RVM
- Ruby 3.1.2
- Postgresql

**1. Config the credentials**
````
EDITOR=vim rails credentials:edit
````
Copy the app/config/credentials.yml.example content into credentials file, and replace the database password and secret key base

**2. Setup project**
````
./bin/setup
````

**2. Launch project**
````
./bin/dev
````

**3. Config database test**
````
RAILS_ENV=test rails db:prepare
````

**4. Launch tests**
````
rails test:system
````
