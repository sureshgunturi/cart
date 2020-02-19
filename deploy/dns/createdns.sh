sleep 30
LBNAME=`/usr/local/bin/kubectl describe service api|grep Ingress|awk '{print $NF}'`
sed -i "s/FELBNAME/$LBNAME/g" dns.json
aws route53 change-resource-record-sets --hosted-zone-id Z1H1FL5HABSF5 --change-batch file://dns.json
