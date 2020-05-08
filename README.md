# Free Range Routing on Amazon Linux

## Round 1
### Getting FRR Installed on Amazon Linux
Follow the userdata script at [free_range_routing.sh](free_range_routing.sh)

```diff
- Note: make sure to allow tcp port 179 on the security group and disable source/destination checks on the instance/interface
```

### Adding a loop back interface in linux
```console
sudo ip addr add 1.1.1.1/32 dev lo
sudo ip addr add 3.3.3.3/32 dev lo
```
