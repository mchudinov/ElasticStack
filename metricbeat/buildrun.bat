docker build --build-arg IMAGE_VERSION=7.9.1 -t chudinov/metricbeat .
docker run -d -it --name metricbeat chudinov/metricbeat 
