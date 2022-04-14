## Pipeline Process :
- The CI/CD pipline is consits of two parts :

#### ` 1. Continuous integration:`
  - It include all the steps for :
    - Linting, Installing, Testing, Building the application
  - I added all the scripts (install, build, test, deploy) to package.json files.

#### `2. Continuous Deployment:`
  - It include all the steps for :
    - Deployment the application to Cloud service like AWS.
  - I added all the scripts (deploy) to package.json files.

#### ` Configur.circle\config.yml`
  1. `circleci version` : I set the circleci version which the pipeline should use.
  2. `Orbs section` : Set orbs which will configure the dependencies the pipeline will use. So I set (node - aws cli - eb) versions that circleci will use.
  3. `Jobs section` : where I will write the actins and steps that call the scripts in the root package.json to automat deployment process for the frontend and backend.
  4. `Workflows section` : To specify how the jobs should be handled. Also specify which branch (ex: main) when push code to it the circleci should trigger changes.

#### ` Connect CircleCI to GitHub`
  1. Create a new github repositoy and push your application code to it.
  2. Register with CircleCI for a free account using the Github credentials.
  3. Setup the project repo in the CircleCI Dashboard using the existing circleci/config.yml file already present in the repo.
  4. Add all the secrets to CircleCI environment variables.
  5. Test that pipeline is working.


#### `>>` CircleCI Badge: [![CircleCI](https://circleci.com/gh/Mohamed-Hafez24/udagram_fullstack_app.svg?style=shield&circle-token=<02b741c98c54a54073ebafd8a3fa5d4cfa893b38>)](https://app.circleci.com/pipelines/github/Mohamed-Hafez24/udagram_fullstack_app/2/workflows/d01ae900-8aee-49a4-9ab3-35c05c648ca1/jobs/3)


#### `-` ___I created a pipeline diagram to show the whole lifecycle of the depployment and building a pipline.___
#### `-` ___ALL the screenshots for circleci are added to CircleCi_Screenshots folder.___



![Pipline_Diagram](Pipline_Diagram.jpg?raw=true "Pipline_Diagram")

![circleci_pipelines_environment_variables](./CircleCi_Screenshots/circleci_pipelines_environment_variables.png?raw=true "circleci_pipelines_environment_variables")

![circleci_pipelines_workflows](./CircleCi_Screenshots/circleci_pipelines_workflows.png?raw=true "circleci_pipelines_workflows")

![CircleCi_Repo_Mark](./CircleCi_Screenshots/CircleCi_Repo_Mark.jpg?raw=true "CircleCi_Repo_Mark")


