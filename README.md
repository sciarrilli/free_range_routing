# Free Range Routing on Amazon Linux

## Getting FRR Installed on Amazon Linux

1. Create an Amazon Linux 2 instance
2. use the [free_range_routing.sh](free_range_routing.sh) script for userdata on the instance
3. On the security group allow inbound tcp port 179 for bgp and ping for testing
4. Disable source/destination checks on the instance/interfaces

### Adding a loop back interface in linux
```console
sudo ip addr add 1.1.1.1/32 dev lo
sudo ip addr add 3.3.3.3/32 dev lo
```
