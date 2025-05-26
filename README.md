
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


- **Zabbix**: Active network and resource monitoring


# LIA Linux Platform Project

## 📌 Project Title
**Building and Operating a Linux-based Platform for Central Network Services & Monitoring**

## 👨‍💻 Author
Muhammad Adnan  
GitHub: [muhad308](https://github.com/muhad308/Lia-Linux-Project)

---

## 📖 Description

This project was created as part of the LIA (Lärande i arbete) course, with the goal of designing, configuring, and documenting a **virtualized Linux environment** that provides:

- Static IP addressing
- Secure remote access (SSH)
- Hardening & firewall (UFW, Fail2Ban)
- DHCP & DNS server
- Log monitoring & backup
- Zabbix server and agent monitoring
- Alerting via email

All work is done in **VirtualBox** with Ubuntu Server 24.04 and Ubuntu Desktop/Client.

---

## 🧰 Features

| Service          | Description |
|------------------|-------------|
| ✅ Static IP      | Set up on server/client using Netplan |
| ✅ SSH Access     | Key-based login + hardened SSH config |
| ✅ UFW Firewall   | Basic firewall rules and logging |
| ✅ Fail2Ban       | Brute-force SSH protection |
| ✅ DNS (BIND9)    | Hostname resolution via BIND server |
| ✅ DHCP Server    | Dynamic IP assignment |
| ✅ Zabbix Server  | Monitoring platform with auto discovery |
| ✅ Email Alerts   | Configured via SMTP to Gmail |
| ✅ Log backups    | Bash script to archive logs daily |

---

## 🖥️ System Requirements

- VirtualBox 7+
- Ubuntu Server 24.04 LTS (Server VM)
- Ubuntu Desktop 24.04 LTS (Client VM)
- 2 GB RAM minimum per VM
- Internet access (bridged adapter or NAT + host-only)
- Git and GitHub account

---

## 🗂️ Folder Structure

lia-linux-project/
├── README.md
├── checklist.md
├── logbook.md
├── final-report.docx
├── netplan/
├── ssh/
├── hardening/
├── scripts/
├── fail2ban/
├── logs/
├── dhcp/
├── dns/
├── zabbix/
├── screenshots/

