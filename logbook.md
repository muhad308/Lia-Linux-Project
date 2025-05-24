# LIA Linux Project – Logbook 🛠️

## Student: Muhammad Adnan  
## Project Title: Building and operating Linux-based platform for central network services & monitoring  
## Platform: VirtualBox (Ubuntu Server + Client)  
## GitHub Repository: https://github.com/muhad308/Lia-Linux-Project  

---

### 📅 Week 1: Project Setup & Planning
**Tasks:**
- Installed Ubuntu Server and Client on VirtualBox
- Designed network topology (static IPs, host-only + NAT)
- Created project directory structure
- Set up GitHub repo and initialized project

**Issues Faced:**
- Network unreachable due to Netplan misconfig
- Solved by correcting indentation and applying Netplan properly

**Supervisor Feedback:**
- Suggested defining clear folder structure and backup plan

---

### 📅 Week 2: SSH Hardening + Firewall
**Tasks:**
- Configured SSH key login, disabled root login
- Enabled UFW, allowed SSH, DNS, DHCP ports
- Installed and configured Fail2Ban

**Errors Faced:**
- Fail2Ban not banning due to wrong log path
- Solved by setting log target to /var/log/auth.log

**Reading/Reference:**
- DigitalOcean’s guide on SSH hardening
- Ubuntu official UFW docs

---

### 📅 Week 3: DHCP and DNS
**Tasks:**
- Configured isc-dhcp-server with reservations
- Installed BIND9 and configured forward/reverse zones

**Errors:**
- BIND failed to start due to syntax errors (missing `;`)
- Debugged using `named-checkconf` and `named-checkzone`

---

### 📅 Week 4: Central Logging
**Tasks:**
- rsyslog configured for remote logging
- Logrotate setup for weekly log archiving
- Bash script for log backup created

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
- Weekly checkpoints with supervisor on Zoom/Discord
- Used Markdown for documentation and organization
