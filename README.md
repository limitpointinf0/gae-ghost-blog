# GAE Ghost Blog
Ghost blog deployment in Google App Engine

## Quick Start

```bash
gcloud sql instances create test --activation-policy=ALWAYS --tier=db-n1-standard-1 --region=us-central1
gcloud sql databases create ghost --instance test
gcloud sql users set-password root --host=% --instance test --password=yourpassword
```
- Set authorized networks for your CloudSQL instance
- Fix config.production.json with the db credentials then run the following
```bash
cd gae-ghost-blog
gcloud app deploy
```  

## Sources
[Ghost blog on App Engine](https://dev.to/thomasvl/ghost-blog-on-app-engine-9nh)
[Configuring your App with app.yaml](https://cloud.google.com/appengine/docs/flexible/nodejs/configuring-your-app-with-app-yaml)
## License
[MIT](https://choosealicense.com/licenses/mit/)
