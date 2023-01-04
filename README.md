
* Local Configuration:
    * create/navigate to a dbt directory
        * mkdir dbt_projects
        * cd dbt_projects
    * virtualal environment : 
        * python -m venv dbt-env
        * dbt-env\Scripts\activate
    * Install dbt core adaptor:
        * pip install dbt-bigquery
        * dbt --version
    * Initilize dbt project (Afolder will be created by default)
        * dbt init
            * options: [[1] bigquery, [1] oauth, Project id, dataset, Threads 1,Timeout 300 ,[1] US ]
    *   Git configurations
        * Create a git repo and initilize you folder
    * Login gcloud in venv
        * gcloud auth application-default login
    * verify
        * dbt debug 
