# Server Hardening Checklist

✅ SSH key-based authentication enabled  
✅ Password login disabled in `/etc/ssh/sshd_config`  
✅ UFW firewall enabled and configured  
✅ Only required ports allowed (e.g., 22, 80, 443)  
✅ Fail2ban installed and active  
✅ NTP configured using `timedatectl`  
✅ Non-root user with limited `sudo` rights created  
✅ Root login disabled via SSH  
✅ System updated with `apt update && apt upgrade`  
✅ SSH access restricted to known IPs (optional)  
