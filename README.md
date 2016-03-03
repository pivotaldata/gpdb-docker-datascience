# gpdb-docker-datascience
Pivotal Greenplum Database Data Science Docker Image (4.3.7.1)

# Building the Docker Image
You will first need to download the Pivotal Greenplum Database 4.3.7.1 RHEL compatible data science extensions (PL/Perl, PL/Java, PL/R, MADLib, & PostGIS) located at https://network.pivotal.io/products/pivotal-gpdb and place them inside the docker working directory. The individual files required are listed below. 

PL/Perl-plperl-ossv5.12.4_pv1.3_gpdb4.3orca-rhel7-x86_64.gppkg
PL/Java-pljava-ossv1.4.0_pv1.3_gpdb4.3orca-rhel5-x86_64.gppkg
PL/R-plr-ossv8.3.0.15_pv2.1_gpdb4.3orca-rhel5-x86_64.gppkg
MADlib-madlib-ossv1.8_pv1.9.4_gpdb4.3orca-rhel5-x86_64.tar
PostGIS-postgis-ossv2.0.3_pv2.0.1_gpdb4.3orca-rhel5-x86_64.gppkg

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

