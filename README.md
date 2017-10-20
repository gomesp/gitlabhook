# Gitlab webhooks test

This project has two applications:

1. Gitlab CE
1. node.js express app

The applications are packaged in a basic docker-compose file, and the application services are running on the following ports:

- gitlab: 80, 443, 22
- app: 3000

Gitlab sees the app with the hostname alias 'app'.

# App API

The app exposes a single REST resource ```/gitlab``` that expects a ```POST``` request. This resource simply outputs to the console the request body, i.e. the webhook contents.