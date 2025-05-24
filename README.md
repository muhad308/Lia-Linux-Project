# **LIA Linux Project: Network Services & Monitoring**  
**Student:** [Your Name]  
**Supervisor:** [Name]  
**Duration:** 6 weeks (40 yhp)  

## **Project Goals**  
Deploy a Linux (Ubuntu Server) platform with:  
- ✅ DHCP Server (ISC-DHCP)  
- ✅ DNS (BIND9)  
- ✅ Syslog (rsyslog + Logrotate)  
- ✅ Monitoring (Zabbix Server + Agent)  

## **Weekly Progress**  
| Week | Tasks | Deliverables |  
|------|-------|-------------|  
| 1 | Project plan, risk analysis | [Project_Plan.md](/Week1/Project_Plan.md) |  
| 2 | Ubuntu install + hardening | [CHECKLIST.md](/CHECKLIST.md) |  
| 3 | DHCP + DNS setup | [dhcpd.conf](/Configs/dhcpd.conf) |  

## **Key Configurations**  
### 1. DHCP Server  
- **Config File:** [`/etc/dhcp/dhcpd.conf`](/Configs/dhcpd.conf)  
- **IP Range:** `192.168.1.100-200`  

### 2. Zabbix Alerts  
- **Email Notifications:** Gmail SMTP  
- **Triggers:**  
  - CPU > 80% for 5 mins  
  - Disk < 10% free  

## **How to Test**  
```bash
# Check DHCP leases:
cat /var/lib/dhcp/dhcpd.leases
# Test DNS:
dig @192.168.1.10 example.com
