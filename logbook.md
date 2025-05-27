# LIA Linux Project – Logbook 

## Student: Muhammad Adnan  
## Project Title: Building and operating Linux-based platform for central network services & monitoring  
## Platform: VirtualBox (Ubuntu Server + Client)  
## GitHub Repository: https://github.com/muhad308/Lia-Linux-Project  

---

###  Week 1: Project Setup & Planning
**Tasks:**
- Installed Ubuntu Server and Client (20.04.2 LTS) on VirtualBox
- Designed network topology and configured (static IPs, Host-only + NAT)
- Created project directory structure
- Set up GitHub repo and initialized project
- Installed Git, SSH, configured GitHub SSH key
- Verified internet connectivity

**Issues Faced:**
- Network unreachable due to Netplan misconfig
- Solved by correcting indentation and applying Netplan properly

**Supervisor Feedback:**
- Suggested defining clear folder structure and backup plan

---

### 📅 Week 2: SSH Hardening + Firewall
**Tasks:**
- Configured SSH key login, disabled root login
- Enabled UFW, allowed SSH, DNS, DHCP ports and  denied other traffic
- Installed and configured Fail2Ban
- Set static IPs via `/etc/netplan/01-static.yaml`
- Installed Fail2Ban and tested lockout on wrong SSH attempts

**Errors Faced:**
- Fail2Ban not banning due to wrong log path
- Solved by setting log target to /var/log/auth.log

**Reading/Reference:**
- DigitalOcean’s guide on SSH hardening
- Ubuntu official UFW docs

---

### 📅 Week 3: DHCP and DNS
**Tasks:**
- Set DHCP server on server, tested with Ubuntu client
- Installed BIND9 and configured forward/reverse zones
- Verified DNS with `dig`, `nslookup`

**Errors:**
- BIND failed to start due to syntax errors (missing `;`, fixed with `named-checkconf`)
- Debugged using `named-checkconf` and `named-checkzone`

---

### 📅 Week 4: Central Logging
**Tasks:**
- Rsyslog configured for remote logging
- Logrotate setup for weekly log archiving
- Bash script for log backup created
- Created log directories and tested logs from client
- Wrote log backup script + scheduled via crontab

**Fixes:**
- Log folder permissions set to allow write from rsyslog

---

### 📅 Week 5: Zabbix Monitoring
**Tasks:**
- Installed Zabbix server & agent
- Created Zabbix host, tested with ping and CPU metrics
- Configured Gmail SMTP and tested alert via agent shutdown
- Exported XML templates for backup


**Errors Faced:**
- Web UI said “Zabbix server is not running”
- Fixed by setting correct DB password and restarting services

**Screenshots Taken:**
- Web UI, graph, SMTP test

---

### 📅 Other Notes:
- Regularly pushed code and scripts to GitHub
- Weekly checkpoints with supervisor on Google Meet/Microsoft Teams
- Used Markdown for documentation and organization
