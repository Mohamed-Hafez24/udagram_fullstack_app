eb init udagram-api-app --platform node.js --region us-east-1 &&
eb use Udagramapiapp-env && eb setenv DB_PORT=$DB_PORT JWT_SECRET=$JWT_SECRET POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD &&
eb deploy Udagramapiapp-env