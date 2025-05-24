# LIA Linux Project Plan

## 1. Project Overview
This project aims to set up a secure, Linux-based network services server for a fictional medium-sized company. It will provide DHCP, DNS, Syslog, and Monitoring services.

## 2. Goals
- Install and secure Ubuntu Server
- Configure core network services: DHCP, DNS, Syslog, Zabbix
- Automate maintenance tasks with scripts
- Document and present the solution

## 3. Requirements
- OS: Ubuntu Server LTS (CLI only)
- Services: isc-dhcp-server, bind9, rsyslog, zabbix-server
- Automation: Bash or Python scripts
- Tools: Git, GitHub/GitLab, VirtualBox/Proxmox

## 4. Risks and Mitigation
| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| Service fails on reboot | Medium | High | Enable autostart, test thoroughly |
| Misconfigured DNS | High | Medium | Use named-checkconf, named-checkzone |
| Script errors | Medium | Medium | Use logging + dry-run testing |
| Zabbix too complex | Medium | Medium | Follow official install guide step-by-step |

## 5. Timeline
| Week | Tasks |
|------|-------|
| 1 | Planning, requirements gathering |
| 2 | Ubuntu install + hardening |
| 3 | DHCP + DNS setup |
| 4 | Syslog + logrotate + scripting |
| 5 | Zabbix monitoring |
| 6 | Testing, documentation, presentation |

## 6. Deliverables
- Config files for all services
- 2 automation scripts
- Final report (10–15 pages)
- Demo presentation
- GitHub repository

