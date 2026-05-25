ip=$1
function tcpscan ()
{
      ip=$1
for port in $(seq 1 65535);
do
     timeout 1 bash -c "</dev/tcp/$ip/$port && echo port $port is open || echo port $port is
closed > /dev/null" 2>/dev/null || echo Connection timeout > /dev/null
done
}