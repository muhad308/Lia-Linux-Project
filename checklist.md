# LIA Linux Project Checklist


## Week 1: Project Planning
- [x] Completed project plan and requirements specification.
- [x] Identified risks and outlined risk mitigation strategies.
      
## Week 1: Installation & Hardening
- [x] Installed Ubuntu Server (version: 20.04 LTS) on VirtualBox
- [x] Installed Ubuntu Desktop client VM
- [x] Installed Git and created GitHub repo
- [x] Set up SSH and tested key-based login
- [x] Verified static IP setup via Netplan


## Week 2: SSH + Security
- [x] Hardened SSH (disabled root login & password login)
- [x] Enabled UFW and configured SSH rules
- [x] Installed and configured Fail2Ban
- [x] Backup configuration files
- [x] Created monitoring scripts

## Week 3: DHCP & DNS Services
- [x] Installed and configured BIND9 DNS server
- [x] Configured DNS zone files for forward and reverse lookup
- [x] Installed DHCP server and tested client IP lease
- [x] Verified DNS resolution via dig and nslookup
- [ ] Configured DHCP server (`dhcpd.conf`).
- [ ] Configured internal DNS zone and forwarding (`named.conf.local`).

## Week 4: Syslog Server & Logrotate (Logging & Scripts) 
- [x] Centralized logging with Rsyslog
- [x] Created log backup script using cron
- [x] Logs stored in `/var/log/remote/` folder
- [x] Tested remote log forwarding
- [ ] Set up rsyslog server for central log collection.
- [ ] Configured Logrotate for log file management.

## Week 5:  Zabbix Monitoring Server
- [x] Installed Zabbix Server + UI + Agent
- [x] Configured Zabbix database and server conf
- [x] Added client host to Zabbix via agent
- [x] Created and tested email notifications
- [x] Set up host monitoring and graphs
- [ ] Set up monitoring thresholds and email notifications.

## Week 6: Testing & Troubleshooting Documentation & Finalization
- [x] Created `README.md`, `logbook.md`, `project-plan.md`
- [ ] Uploaded screenshots to `/screenshots/`
- [ ] Final `.docx` report added
- [ ] Verified GitHub project structure
- [ ] Conducted functionality tests for all services.
- [ ] Identified and resolved at least 3 troubleshooting issues.
- [ ] Measured and documented performance metrics.
