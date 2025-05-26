# LIA Linux Project – Network Services & Monitoring

# LIA1 Assignment: Building and Operating a Linux-Based Platform for Central Network Services & Monitoring

**Student:** Muhammad Adnan  
**Supervisor:** Daniel Thyselius  
**Company:** Mindful Stack AB  
**Course:** Network Technician, TUC Vocational College - Linköping  
**Duration:** 6 weeks (40 yhp)  
**GitHub Repository:** [Lia-Linux-Project](https://github.com/muhad308/Lia-Linux-Project)


---

## Project Overview

This project focuses on building a secure, service-rich Linux platform that delivers core network services (SSH, DHCP, DNS), logging, and monitoring capabilities using Zabbix. It was developed during the LIA internship using Ubuntu Server and Client VMs on VirtualBox.

All services and configurations are documented, tested, and version-controlled via GitHub. This platform simulates a small business environment with central server monitoring and auto-alerting features.

Why is this important?
Businesses need reliable network services (like IP assignment, DNS, and logging).

A centralized Linux server reduces manual work and improves security.

---

## Objectives

Set Up Virtual Server: Deploy Ubuntu Server 24.04 on VirtualBox.

Configure Network Services: Implement DHCP, DNS, Syslog, and Zabbix.

Enhance Security: Utilize SSH keys, UFW firewall, and Fail2Ban.

System Monitoring: Employ Zabbix for real-time monitoring and alerts.

Version Control: Use Git and GitHub for tracking configurations and scripts.


## Services Implemented

Service	Purpose and Explanation

DHCP Server	Automatically assigns IP addresses to client machines, reducing manual configuration errors.

DNS Server (BIND9)	Resolves internal hostnames to IP addresses, facilitating easier network navigation.

Syslog (rsyslog)	Collects and centralizes logs from multiple machines, aiding in troubleshooting and auditing.

Logrotate	Manages log file sizes by rotating and archiving logs, ensuring disk space is conserved.

Zabbix Monitoring	Monitors system performance and services, sending alerts for any anomalies detected.

SSH Key Login	Provides secure remote access, mitigating risks associated with password-based logins.

UFW Firewall	Controls incoming and outgoing traffic, adding a layer of security to the server.

Fail2Ban	Protects against brute-force attacks by banning IPs with multiple failed login attempts.


## Tools and Technologies
Operating Systems: Ubuntu Server 24.04 (Server), Ubuntu Desktop 24.04 (Client)

Virtualization: VirtualBox

Network Configuration: Netplan

Security: SSH, UFW, Fail2Ban

Monitoring: Zabbix

Version Control: Git, GitHub


## 🗂️ Folder Structure

```bash
lia-linux-project/
├── netplan/                 # Static IP configs (server/client)
├── ssh/                     # sshd_config + keys
├── hardening/               # Hardening checklist + config backups
├── fail2ban/                # jail.local and Fail2Ban logs
├── dhcp/                    # DHCP server configs
├── dns/                     # BIND9 zone files and config
├── zabbix/                  # Zabbix XML templates + screenshots
├── logs/                    # UFW, fail2ban, and system logs
├── scripts/                 # Bash scripts for automation/log backup
├── screenshots/             # PNG screenshots for verification
├── checklists/              # Weekly assignment checklist
├── logbook.md               # Daily/weekly progress & meetings
├── project-plan.md          # Goals, timeline, risks, tools
├── final-report.docx        # Final detailed project report
└── README.md                # This file



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

