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

**3. Generate data**
````
rails db:seed
````

**4. Config database test**
````
RAILS_ENV=test rails db:prepare
````

**5. Launch tests**
````
rails test:system
````

## Turbo notes

### Turbo Stream
#### Remove a Turbo Frame
````
turbo_stream.remove
````
#### Insert a Turbo Frame at the beginning/end of a list
````
turbo_stream.append
turbo_stream.prepend
````
#### Insert a Turbo Frame before/after another Turbo Frame
````
turbo_stream.before
turbo_stream.after
````

#### Replace or update the content of a Turbo Frame
````
turbo_stream.update
turbo_stream.replace
````
