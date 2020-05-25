docker build --build-arg IMAGE_VERSION=7.6.2 -t chudinov/metricbeat .
docker run -d -it --name metricbeat chudinov/metricbeat 
