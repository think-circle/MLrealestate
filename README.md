
<H1> MELBOURNE HOUSE PRICE PREDICTION</H1>
<H3> TF SEQUENTIAL DNN FOR REGRESSION. PRODUCTIONISED USING BOTH TF SERVE & FASTAPI</H3>

<H4> How to start FASTAPI UVICORN SERVER. NOTE: --reload ensures everytime you update main python file the server is reloads with updated config</H4>
uvicorn main:app --reload

<H4> How to start Streamlit Server (Front End) </H4>

streamlit run app.py
<H4> Generate requirements file </H4>
pip3 freeze > requirements.txt

<H4> Install Heroku CLI on WSL </H4>
curl https://cli-assets.heroku.com/install.sh | sh



<H4> Create new App on Heroku </H4>
git init
heroku login
heroku create ai-thinkcircle
git add .
git commit -m "initial commit"
git push heroku master
heroku ps:scale web=1



<H4>  Heroku Container login</H4>
heroku create <appname>
heroku container: login
heroku container:push web -a <appname>
heroku container:release web -a <appname>
heroku logs -a <appname> --tail

<H4> Update App in Heroku after you have done changes </H4>
git add .
git commit -m "second commit"
git push heroku master




