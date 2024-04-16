sudo gem build /home/azureuser/microsoft-sentinel-logstash-output/microsoft-sentinel-logstash-output.gemspec
sudo /usr/share/logstash/bin/logstash-plugin install --no-verify
sudo /usr/share/logstash/bin/logstash -f /etc/logstash/conf.d/logstash-to-sentinel.conf


# logger -p local4.warn --rfc3164 --tcp -t CEF: "0|NETWORK|YOURFAVORITEFIREWALL|DnsProxyLog|Datacenter|proxy|10.73.4.7|48454|113.1.15.87|443|123|OUT|eu-v20.events.data.microsoft.com|TCP|ALLOW" -P 514 -d -n 127.0.0.1
