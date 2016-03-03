# gpdb-docker-datascience
Pivotal Greenplum Database Data Science Docker Image (4.3.7.1)

# Building the Docker Image
You will first need to download the Pivotal Greenplum Database 4.3.7.1 RHEL compatible data science extensions (PL/Perl, PL/Java, PL/R, MADLib, & PostGIS) located at https://network.pivotal.io/products/pivotal-gpdb and place it inside the docker working directory. The individual files required are listed below. 

[list of files goes here]

cd [docker working directory]

docker build -t [tag] .

# Running the Docker Image
docker run -i -p 5432:5432 [tag]

# Container Accounts
root/pivotal

gpadmin/pivotal

# Using psql in the Container
su - gpadmin

psql

# Using pgadmin outside the Container
Launch pgAdmin3

Create new connection using IP Address and Port # (5432)

