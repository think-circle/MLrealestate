heroku container:login
heroku container:push web -a tf-serve-model
heroku container:release web -a tf-serve-model
heroku logs -a tf-serve-model --tail