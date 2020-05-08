# Free Range Routing on Amazon Linux

![](images/frr.jpeg) + ![](images/amazon_linux.png)

## Getting FRR Installed on Amazon Linux

1. Create an Amazon Linux 2 instance
2. Use the [free_range_routing.sh](free_range_routing.sh) script for userdata on the instance
3. On the security group allow inbound tcp port 179 for bgp and ping for testing
4. Disable source/destination checks on the instance/interfaces
5. Add an IP address to the loopback interface in linux

    ``` console

    sudo ip addr add 1.1.1.1/32 dev lo

    ```

6. Login to frr with *vtysh*

    ``` bash

    service integrated-vtysh-config
    !
    router bgp 65001
     neighbor 172.31.24.201 remote-as 65002
     !
     address-family ipv4 unicast
      network 1.1.1.1/32
     exit-address-family
    !
    end
    !
    write

    ```
