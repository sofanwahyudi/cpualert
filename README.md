# cpualert
BY Ankam Ravi Kumar

Cpu Alert
 git clone https://github.com/sofanwahyudi/cpualert
 vi CpuAlert.sh
 replace your email address  notification
 
 chmod +x CpuAlert.sh
 sh -x CpuAlert.sh

#execute yet every 30mintes.
crontab -e 
#CPU Utilization Monitoring
*/30 * * * * sh /SCRIPT-PATH/CpuAlert.sh

:wq   <<-- Save & Exit

#execute script every 5 minutes
crontab -e 
#CPU Utilization Monitoring
*/5 * * * * sh /SCRIPT-PATH/CpuAlert.sh

:wq   <<-- Save & Exit
