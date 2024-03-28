# I - Why choosing start Jupyter Notebook in Docker:
I start working on Window OS and counter some problems with Spark and Hadoop as well as S3A.
I can solve these problems on my own computer, however this not ensure it can work on all computer. 

To solve this, I choose to dockerize to make sure it can run on different scenarios.
# II - Start Minio and Jupyter notebook:
1/ First of all, copy .env.example to .env. 

2/ Run the docker-compose.yml file to start MinIO with command 

    docker compose up

3/ After successfully starting Minio, navigate inside and create a bucket named "data". Then, generate access and secret keys for yourself. Then update given key pair to .env file.

4/ Down all service with command `docker compose down` then start again with `docker compose up`

5/ Now, in backend service logs, use will see a link to Jupyter notebook as `http:127.0.0.1:8000/lab?token=....`. Follow
this link to access Jupyter lab.

6/ In here, run all code section in download.ipynb and transform.ipynb sequentially.

7/ Now, as expected, we can see data-result as well as data-raw in MinIO buckets.
# III - Suggestions
If you counter any problem when running this test, please contact me through gmail: `duytran060501@gmail.com`
 