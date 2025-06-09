# LIA Daily Diary – Linux Server & Network Monitoring Project 


**Project Title:** Building and operating Linux-based platform for central network services & monitoring 

- **Student:** Muhammad Adnan  
**Supervisor:** Daniel Thyselius  
**LIA location:** Mindful Stack AB  
**Course:** NÄTD24LIN_LIA140
- **LIA Period:** 2025-05-05 – 2025-06-11
   
- **Platform:** VirtualBox (Ubuntu Server + Client)  
- **GitHub Repository:** https://github.com/muhad308/Lia-Linux-Project  

---

###  Week 1: Initial Setup & Project Planning
**Date:** [Week 1- 2025-05-05 – 2025-05-11]

**Tasks:** 
- Downloaded and Installed Ubuntu Server and Client (20.04.2 LTS) on VirtualBox
- Designed network topology and configured.
- Verified network adapters (Host-only & NAT)
- Connected server and client successfully
- Set static IPs for both machines using Netplan.
- Created project directory structure
- Set up GitHub repo and initialized project
- Installed Git, SSH, configured GitHub SSH key
- Verified internet connectivity
- Enabled and tested SSH access

**Issues Faced:**
- Network unreachable due to Netplan misconfig
- Solved by correcting indentation and applying Netplan properly
- Initial Git push rejected – solved using rebase and pull

**Supervisor Feedback:**
- Suggested defining clear folder structure and backup plan

**Reflection:**
- Got familiar with system setup and remote work coordination. Solved basic networking and Git issues.

---

###  Week 2: SSH Hardening + Firewall
**Date:** [Week 2 - 2025-05-12 – 2025-05-18]

**Tasks:**
- Configured SSH key login, disabled root login
- Enabled UFW, allowed SSH, DNS, DHCP ports and  denied other traffic
- Installed and configured Fail2Ban
- Set static IPs via `/etc/netplan/01-static.yaml`
- Installed Fail2Ban and tested lockout on wrong SSH attempts
- Created hardening-checklist.md and committed it to Git

**Errors Faced:**
- Fail2Ban not banning due to wrong log path
- Solved by setting log target to /var/log/auth.log

**Reading/Reference:**
- DigitalOcean’s guide on SSH hardening
- Ubuntu official UFW docs

**Reflection:**
- Learned practical security measures for Linux environments. Config verification and logs were crucial.
---

###  Week 3: DHCP and DNS Server Setup
**Date:** [Week 3 - 2025-05-19 – 2025-05-25]

**Tasks:**
- Set DHCP server on server, tested with Ubuntu client
- Installed BIND9 and configured local DNS zone lia.local
- Created forward and reverse zone files
- Used dig,nslookup, named-checkconf and named-checkzone to verify DNS setup
- Tested DNS resolution from client

**Errors:**
- BIND failed to start due to syntax errors (missing `;`, fixed with `named-checkconf`)
- Debugged using `named-checkconf` and `named-checkzone`

**Reflection:**
- Understood how to deploy DHCP and DNS servers from scratch. BIND9 configuration was detail-sensitive.
---

###  Week 4: Centralized Logging (Syslog) + Scripts
**Date:**  [Week 4 - 2025-05-26 – 2025-05-01] 

**Tasks:**
- Rsyslog configured for remote logging
- Configured /etc/rsyslog.conf and /etc/rsyslog.d/*.conf
- Logrotate setup for weekly log archiving
- Bash script for log backup created
- Created log directories and tested logs from client
- Wrote log backup script + scheduled via crontab

**Fixes:**
- Log folder permissions set to allow write from rsyslog
- Custom log files not rotated at first – fixed with manual logrotate config

**Reflection:**
- Understood centralized logging architecture. Bash scripting helped automate backups.

---

### Week 5: Zabbix Monitoring
**Date:**  [Week 5 - 2025-06-02 – 2025-06-08]

**Tasks:**
- Installed MariaDB,Apache,PHP,Zabbix server & agent
- Created Zabbix host, tested with ping and CPU metrics
- Fixed permission errors in zabbix_server.conf
- Logged into Web UI at http://192.168.56.10/zabbix
- Added host (client) and linked it with template
- Configured Gmail SMTP and tested alert via agent shutdown
- Simulated alert (disabled agent) and received email
- Exported XML templates for backup


**Errors Faced:**
- Web UI said “Zabbix server is not running”
- Fixed by setting correct DB password and restarting services

**Screenshots Taken:**
- Web UI, graph, SMTP test

**Reflection:**
- Gained experience in real-time monitoring. Zabbix is complex but powerful.

---

**Weekly meetings with Supervisor on Google Meet/Microsoft Teams/Email questins feedback** 
- Mon May 5 2025
- Mon Jun 9 2025
- Mon 12 May 2025
- Wed 14 May 2025
- Fri 16 May 2025
- Mon 19 May 2025
- Thu 22 May 2025
- Mon 26 May 2025
- Wed 28 May 2025
- Mon 02 June 2025

  ---
  
###  Other Notes:
- Regularly pushed code and scripts to GitHub
- Used Markdown for documentation and organization
- Final Testing & Documentation
- Screenshots Organizing
- Documentation polishing: checklist, README.md, final-report.docx]


