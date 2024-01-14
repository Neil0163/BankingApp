This is my BankingApplication i am wroking on.
It's a solo project i am building after finishing my Software Engineering course with Makers.

1) !GETTING SET UP WITH THE CORRECT TOOLS! 
1.1) Run pip install --upgrade pip
1.2) Run pytest
1.3) Install postgresql@15
1.4) echo 'export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"' >> ~/.zshrc
1.5) brew services start postgresql@15 (This runs postgresql@15 in the background)
1.6) install Tableplus
1.7) brew install curl
1.8) Check brew works curl https://jsonplaceholder.typicode.com/todos/1
1.9) install PostMan
1.10)install docker

2) !SETTING UP MAIN REPOSITORY!
2.1) Create a new directory - mkdir <Directoery name>
2.2) Initialise the Directory - git init 
2.3) Make a shell enviroment - pipenv shell 
2.4) Create the same Repo name on GitHub
2.5) Align the remotes - git remote  add origin < Copy and past Github Repo link>
2.6) Create relevant folders - lib, test, seeds, templates, static
2.7) Inside lib and test initalise with empty python file - create a file named __init__.py
2.8) Create a readme file 
2.9) Do first push to git to check remotes - git add. | git commit -m <message> | git push -u origin main (sets up main branch)
2.10)Create Recipie file 

3) !DATABASE SET UP!
3.1)Create database - createdb <database name> and also test db using same name with _test added on  
3.2)Create the SQL file and database file and create seeds
3.3)Seed the database running - psql -h 127.0.0.1 BankingApp_test < seeds/BankingApp.sql
