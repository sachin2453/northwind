Local Configuration:
    1 create/navigate to a dbt directory 
        -  mkdir dbt_projects
        -   cd dbt_projects
    2 virtualal environment : 
        -   python -m venv dbt-env
        -   dbt-env\Scripts\activate
    3 Install dbt core adaptor:
        -   pip install dbt-bigquery
        -   dbt --version
    4 Initilize dbt project (Afolder will be created by default)
        -   dbt init
            -   options: [[1] bigquery, [1] oauth, Project id, dataset, Threads 1,Timeout 300 ,[1] US ]
    5  Git configurations
        -  Create a git repo and initilize you folder
    4 Login gcloud in venv
        -   gcloud auth application-default login
    5 verify
        -   dbt debug 