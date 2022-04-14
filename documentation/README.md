# Hosting a Full-Stack Application
[![CircleCI](https://circleci.com/gh/Mohamed-Hafez24/udagram_fullstack_app.svg?style=shield&circle-token=<02b741c98c54a54073ebafd8a3fa5d4cfa893b38>)](https://app.circleci.com/pipelines/github/Mohamed-Hafez24/udagram_fullstack_app/2/workflows/d01ae900-8aee-49a4-9ab3-35c05c648ca1/jobs/3)

### Used Project for deployment is : `Udagram starter code provided by Udacity`.

* `Environment Variables` : Instead of being hard-coded, I set them in circleci environment variable and invoked them in the deployment script to EB environment through bin\deploy.sh file to set them to EB environment variable so the app can use them throw config.ts file.
  ```
  eb setenv DB_PORT=$DB_PORT JWT_SECRET=$JWT_SECRET POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST 
  POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD
  ```
* `Update udagram-api/src/config/config.ts` : The file was using the same port for the server and database so I separated them by adding new variable __dbPort__ for the databse.

* `Update scripts in package.json file` :  The Udagram project come with build and test scripts. I added new scripts for deployment to both udagram-api and udagram-frontend. Also added a package.json in the root to organise all the steps for install, build, test and deploy scripts when use them inside pipline file.

* `Adding AWS deployment scripts` :  Created a new file in the root of udagram-api and udagram-frontend __bin/deploy.sh__ having scripts for deployment to AWS using AWS CLI. 

* `Liking CircleCi to my githup account` : connect circleci to the main branch in the project repository so any push to my repository will reflect in circleci . 

* `Adding CircleCi Configuration file` : Created a pipeline file __.circleci/config.yml__ containing all the orbs and jobs needed to automate deployment process. And configure secrets in circleci environment variables.


### Links
* The project repository on github which is linked to circleci, Go To => [`https://github.com/Mohamed-Hafez24/udagram_fullstack_app`](https://github.com/Mohamed-Hafez24/udagram_fullstack_web_app)
* The app is accessible via this link, Go To => [`http://udagram-front-app.s3-website-us-east-1.amazonaws.com/`](http://udagram-front-app.s3-website-us-east-1.amazonaws.com/) .
> *NOTE <br> make sure you are using a browser that doesn't enforce CORS policys or blocking the user of the EB aws URL by the S3 URL.
> For running chrome without cors, please check this: `https://alfilatov.com/posts/run-chrome-without-cars/`


#### `-` ___I created a [pipeline diagram](#Pipline-Diagram.jpg) to show the whole lifecycle of the depployment and building a pipline.___
#### `-` ___I created an [architecture diagram](#Architecture_Diagram.jpg) to show the communication between these three services.___
#### `-` ___ALL the screenshots for circleci are added to CircleCi_Screenshots folder.___
#### `-` ___ALL the screenshots for the EB and S3 and RDS are added to the infrastructure description folder.___

