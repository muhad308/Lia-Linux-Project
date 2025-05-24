# LIA Linux Project: Building and Operating Linux-based Platform for Network Services
 
**Student**: Muhammad Adnan  

**Supervisor**: Daniel Thyselius

**Company:**: Mindful Stack AB

**Course**: Network Technician, TUC Vocational College - Linköping

**Duration**: 6 weeks (40 yhp)

## Project Overview

This project involves designing, installing, and deploying a Linux-based virtual server (Ubuntu Server LTS) that delivers core network services for a medium-sized company (~150 users). The key services implemented include:

- **DHCP**: Automatic IP address and DNS distribution
- **DNS (BIND9)**: Internal zone management and internet forwarding
- **Syslog**: Central log collection using rsyslog and Logrotate
- **Zabbix**: Active network and resource monitoring

## Technologies Used

- **Linux**: Ubuntu Server LTS
- **Services**: DHCP, BIND9 DNS, rsyslog, Zabbix
- **Automation**: Bash and Python scripts for system tasks
- **Security**: SSH key login, fail2ban, UFW firewall
- **Version Control**: GitHub

## Installation Instructions

1. Clone the repository:
    ```bash
    git clone https://github.com/muhad308/Lia-Linux-Project.git
    ```

2. Set up the required services following the documentation in this repository.

3. Refer to the individual service configuration files (`dhcpd.conf`, `named.conf.local`, etc.) for specific details on configuring each service.

## Configuration Files

### DHCP Configuration
- `dhcpd.conf`: DHCP server configuration

### DNS Configuration
- `named.conf.local`: DNS server configuration (for internal zone)

## Scripts
Two automation scripts have been implemented:
1. **Backup Script**: Daily backup of configuration files to the Git repository.
2. **Service Status Check**: Checks the status of critical services and logs output to syslog.

## License
MIT License
