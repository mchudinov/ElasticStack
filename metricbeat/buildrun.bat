docker build --build-arg IMAGE_VERSION=7.10.0 -t chudinov/metricbeat .
docker run -d -it --name metricbeat chudinov/metricbeat 
