# Free Range Routing on Amazon Linux

## Round 1
### Getting FRR Installed on Amazon Linux
Follow the userdata script at [free_range_routing.sh](free_range_routing.sh)

### Adding a loop back interface in linux
```console
sudo ip addr add 1.1.1.1/32 dev lo
sudo ip addr add 3.3.3.3/32 dev lo
```
