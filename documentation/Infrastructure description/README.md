### `*` Application Architecture:
- project-tree

UDAGRAM <br>
|─ .circleci <br>
|  └─ config.yml ---------> `it has the orbs and jobs to run all the scripts `  <br>
| <br>
|─ udagram-api <br>
|──| package.json ---------> `it has all the scripts for build, test, deploy the backend` <br>
|──| ... <br>
|   <br>
|─ udagram-frontend <br>
|──| package.json ---------> `it has all the scripts for build, test, deploy the frontend` <br>
|──| ... <br>
|   <br>
|─ package.json ---------> `it has all the scripts for install, build, test, deploy the frontemd and backend` <br>
|─ README.md <br>
|─ .gitignore <br>
|─     <br>

### `*` AWS Architecture:
  * __`RDS`__ : I created a postgres database instance using AWS RDS. Then I used it's endpoint inside my environment variable.
  * __`Elastic Beanstalk Environment`__ : I created an environment to host my backend application on a server, So I can store and retrive data from RDS and send it to the frontend to be shown.
  * __`S3`__ : I created a bucket on AWS S3 to host my frontend app. Also make it public 

<br>

#### `-` ___I created an architecture diagram to show the communication between these three services.___
#### `-` ___ALL the screenshots for the EB and S3 and RDS are added to the infrastructure folder.___


![Architecture Diagram](Architecture_Diagram.jpg?raw=true "Architecture Diagram")

![AWS RDS](./AWS_RDS_Screenshots/AWS_RDS.PNG?raw=true "AWS RDS")

![AWS_EB_1](./AWS_EB_Screenshots/AWS_EB_1.PNG?raw=true "AWS_EB_1")
![AWS_EB_2](./AWS_EB_Screenshots/AWS_EB_2.PNG?raw=true "AWS_EB_2")
![AWS_EB_3](./AWS_EB_Screenshots/AWS_EB_3.PNG?raw=true "AWS_EB_3")
![AWS_EB_4](./AWS_EB_Screenshots/AWS_EB_4.PNG?raw=true "AWS_EB_4")
![AWS_EB_Env_Variable](./AWS_EB_Screenshots/AWS_EB_Env_Variable.PNG?raw=true "AWS_EB_Env_Variable")

![AWS S3](./AWS_S3_Screenshots/AWS_S3.PNG?raw=true "AWS S3")