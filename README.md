# Where's Waldo

Rails web app that allows you to tag Waldo and his friends in a photograph. On the main page, you will be given a selection of photographs to choose from. The faster you find Waldo and his friends the higher your score. If you score high enough, your name will be requested to save your score.

## Getting Started
These instructions will get you a copy of the project up and running on your computer for development and testing purposes.

### Prerequisites
You will need to install the following if you haven't already
<ul>
	<li>Linux OS. If you are using Windows, you'll have to install a Linux subsystem to setup Ruby on Rails.</li>
	<li><a href="https://www.ruby-lang.org/en/documentation/installation/">Ruby</a></li>
	<li><a href="https://www.tutorialspoint.com/ruby-on-rails/rails-installation.htm">Rails</a></li>
	<li><a href="https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-16-04#create-a-new-database">PostgreSQL</a></li>
</ul>

### Installing
1. On Github, click on the <b>Clone or download</b> button and copy the URL.
2. Open your terminal, and change the current working directory to the location you want the project in. 
3. Type 'git clone' and paste the URL. Press Enter :
```
$ git clone https://github.com/tfb34/wheres-waldo.git
```
4. Run 'bundle install' to install missing gems :

```
$ bundle install
```

5. You must now create a new postgresql database. The PostgreSQL installation procedure creates a default user account called postgres. To use Postgres, you must log into that account by typing :

```
$ sudo -i -u postgres
```

6. Once you're logged in, type 'createdb find_waldo_development' and hit enter :

```
postgres@server:~$ createdb find_waldo_development
```

7. Exit the postgres account by typing exit. Modify the database by running 'rails db:migrate' in the terminal:

```
$ rails db:migrate
```

8. Populate the Database :

```
$ rails db:seed
```

9. Start the server to run the app :

```
$ rails s
```

10. Open your browser and go to http://localhost:3000

## Deployment
<a href="https://adventures-of-waldo.herokuapp.com/">https://adventures-of-waldo.herokuapp.com/</a>


