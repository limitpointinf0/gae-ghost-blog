gcloud sql instances create test --activation-policy=ALWAYS --tier=db-n1-standard-1 --region=us-central1
gcloud sql databases create ghost --instance test
gcloud sql users set-password root --host=% --instance test --password=abc@123