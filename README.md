# traffic_from_zone
Runs a Apache Benchmark against a website on Google cloud

Example usage

    kubectl run -i -t test  --image=lguminski/traffic_from_zone -- -n3 http://google.com/

More parameters at https://httpd.apache.org/docs/2.4/programs/ab.html
