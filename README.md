## Part 1. Installation of the OS##
![](./Attachemnts/Pasted%20image%2020220516173428.png)
<figcaption align = "center"><b>Checking the version</b></figcaption>

## Part 2. Creating a user##
```bash
sudo useradd user-1
sudo groupadd logenjoyer
sudo usermod -g logenhoyer user-1
sudo chgrp -R logenjoyer /var/log/
sudo chmod g+r /var/log/*
```
![](./Attachemnts/Pasted%20image%2020220522133428.png)
<figcaption align = "center"><b>cat /etc/passwd output</b></figcaption>

## Part 3. Setting up the OS network##
```bash
hostnamectl set-hostname user-1
```
 ![](./Attachemnts/Pasted%20image%2020220521173037.png)
<figcaption align = "center"><b>change hostname</b></figcaption>
```bash
timedatectl set-timezone Europe/Moscow
```
![](./Attachemnts/Pasted%20image%2020220521173339.png)
<figcaption align = "center"><b>change timezone</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220521173642.png)

* we need an **io interface** so that the virtual machine can interact with the real
* Dynamic Host Configuration Protocol** (DHCP)

![](./Attachemnts/Pasted%20image%2020220522134156.png)
<figcaption align = "center"><b>network interfaces</b></figcaption>

![](./Attachemnts/Pasted%20image%2020220522140509.png)
<figcaption align = "center"><b>dhcp log</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220522140211.png)
<figcaption align = "center"><b>information from the dhclient.leases </b></figcaption>
* The external IP address or **Public IP address** is the IP address of the **router interface** that is connected to the Internet.
![](./Attachemnts/Pasted%20image%2020220522143006.png)
<figcaption align = "center"><b>external IP address </b></figcaption>

* A internal IP address is a range of non-internet facing IP addresses used in an internal network. Internal IP addresses are provided by network devices, such as routers, using network address translation.

![](./Attachemnts/Pasted%20image%2020220522143539.png)
<figcaption align = "center"><b>internal IP address </b></figcaption>

```bash
sudo vim /etc/netplan/00-installer-config.yaml
```

![](./Attachemnts/Pasted%20image%2020220522144851.png)
<figcaption align = "center"><b>Above are the default entries, which shows that interface “**enp0s3**” is getting the IP from DHCP server</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220522151425.png)
<figcaption align = "center"><b>changing the yaml file</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220522151149.png)
<figcaption align = "center"><b>applying and confirming changes</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220522151457.png)
<figcaption align = "center"><b>after reboot</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220522151551.png)
<figcaption align = "center"><b>ping 1.1.1.1</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220522151618.png)
<figcaption align = "center"><b>ping ya.ru</b></figcaption>

## Part 4. OS Update##
![](./Attachemnts/Pasted%20image%2020220516131441.png)
<figcaption align = "center"><b>refreshing package database</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220516131638.png)
<figcaption align = "center"><b>available update/packages/pathces</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220516131753.png)
<figcaption align = "center"><b>installing security updates and patches for all installed apps</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220516131913.png)
<figcaption align = "center"><b>checking updates again</b></figcaption>

## Part 5. Using the **sudo** command##
* `sudo` is a command-line program that allows trusted users to execute commands as root or another user.

![](./Attachemnts/Pasted%20image%2020220522151828.png))<figcaption align = "center"><b>executing sudo command for user-1</b></figcaption>
```bash
usermod -aG sudo user-1
```
![](./Attachemnts/Pasted%20image%2020220522151946.png))<figcaption align = "center"><b>check that the rights are obtained</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220522152032.png)
<figcaption align = "center"><b>setting new hostname</b></figcaption>

## Part 6. Installing and configuring the time service
![](./Attachemnts/Pasted%20image%2020220521164153.png)
<figcaption align = "center"><b>current date and timezone</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220522154732.png)
<figcaption align = "center"><b>enabling synchronization</b></figcaption>


## Part 7. Installing and using text editors##

#### 1. installing####
```bash
sudo apt install vim
sudo apt install nano
sudo apt install mcedit
```

#### 2. creating and working with files####
```bash
vim test_vim.txt
```
![](./Attachemnts/Pasted%20image%2020220522155511.png)
<figcaption align = "center"><b>vim</b></figcaption>
:wq - to quit and save changes

![](./Attachemnts/Pasted%20image%2020220522155817.png)
<figcaption align = "center"><b>nano</b></figcaption>
**ctrl + x** + **y** + **return** - to quit and save changes

```bash
mcedit test_mcedit.txt
```

![](./Attachemnts/Pasted%20image%2020220522160116.png)
<figcaption align = "center"><b>mcedit</b></figcaption>
**F1** + **return** + **F10** - to quit and save changes

#### 3.  creating and working with files ####
![](./Attachemnts/Pasted%20image%2020220522160434.png)
<figcaption align = "center"><b>vim</b></figcaption>
**:q!** - to exit without saving

![](./Attachemnts/Pasted%20image%2020220522160552.png)
<figcaption align = "center"><b>nano</b></figcaption>
**ctrl + x** + **y** - to exit without saving

![](./Attachemnts/Pasted%20image%2020220522160651.png)
<figcaption align = "center"><b>mcedit</b></figcaption>
**F10** + chose **NO** + **return**

#### 4. creating and working with files ####
**/** - to find
![](./Attachemnts/Pasted%20image%2020220522161244.png)
<figcaption align = "center"><b>vim search</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220522161535.png)
![](./Attachemnts/Pasted%20image%2020220522161604.png)
<figcaption align = "center"><b>before and after replasing</b></figcaption>
**ctrl + w** - to find in nano
![](./Attachemnts/Pasted%20image%2020220522161816.png)
<figcaption align = "center"><b>nano search</b></figcaption>
ctrl + \ - to replase in nano
![](./Attachemnts/Pasted%20image%2020220522161948.png)
![](./Attachemnts/Pasted%20image%2020220522162015.png)
<figcaption align = "center"><b>before and after replasing</b></figcaption>
and then **y** or **A** (to replace all)

F7 - to search
![](./Attachemnts/Pasted%20image%2020220522162438.png)
![](./Attachemnts/Pasted%20image%2020220522162512.png)
<figcaption align = "center"><b>search result</b></figcaption>
F4 - to replase
![](./Attachemnts/Pasted%20image%2020220522162552.png)
![](./Attachemnts/Pasted%20image%2020220522162640.png)
![](./Attachemnts/Pasted%20image%2020220522162655.png)
<figcaption align = "center"><b>before and after replasing</b></figcaption>

## Part 8. Installing and basic setup of the **SSHD** service##
`sudo apt-get install openssh-server`
`sudo systemctl enable ssh` - to enable ssh on boot 

![](./Attachemnts/Pasted%20image%2020220523132016.png)
<figcaption align = "center"><b>ssh status</b></figcaption>
```bash
sudo ufw allow ssh  
sudo ufw enable  
sudo ufw status
```
![](./Attachemnts/Pasted%20image%2020220523132433.png)
<figcaption align = "center"><b>ssh status</b></figcaption>
```bash
sudo vim /etc/ssh/sshd_config
```
![](./Attachemnts/Pasted%20image%2020220523135706.png)
<figcaption align = "center"><b>changing port 22 to port 2022</b></figcaption>
```bash
service ssh restart
```
![](./Attachemnts/Pasted%20image%2020220523135805.png)
<figcaption align = "center"><b>netstat -tan output</b></figcaption>
netstat:
* `-t`  (--tcp) tcp protocol output
* `-a` (--all) Show both listening and non-listening sockets
* `-n` (--numeric) Show numerical addresses instead of trying to determine symbolic host, port or user names
**Proto** - the protocol (tcp, udp, raw) used by the socket.

**Recv-Q** - the count of bytes not copied by the user program connected to this socket.

**Send-Q** - the count of bytes not acknowledged by the remote host.

**Local Address** - Address and port number of the local end of the socket. Unless the **--numeric** (**-n**) option is specified, the socket address is resolved to its canonical host name (FQDN), and the port number is translated into the corresponding service name.

**Foreign Address** - address and port number of the remote end of the socket. Analogous to "Local Address."

**State** - the state of the socket. Since there are no states in raw mode and usually no states used in UDP, this column may be left blank.

![](./Attachemnts/Pasted%20image%2020220523140348.png)
<figcaption align = "center"><b>ps -aux | grep sshd output</b></figcaption>
ps:
* `a` this option causes **ps** to list all processes with a terminal (tty), or to list all processes when used together with the **x** option.
* `u`  Display user-oriented format.
* `x` this option causes **ps** to list all processes owned by you (same EUID as **ps**), or to list all processes when used together with the **a** option.

## Part 9. Installing and using the **top**, **htop** utilities ##
* The **top** program provides a dynamic real-time view of a running
system.
![](./Attachemnts/Pasted%20image%2020220523141703.png)
<figcaption align = "center"><b>top utility</b></figcaption>
* **uptime** - current time and length of time since last boot ![](./Attachemnts/Pasted%20image%2020220523142235.png)

* **number of authorised users** ![](./Attachemnts/Pasted%20image%2020220523142317.png)

* **total system load** - system load avg over the last 1, 5 and 15 minutes
![](./Attachemnts/Pasted%20image%2020220523142415.png)

* **total number of processes**  - shows total **tasks** or **threads**, depending on the state of the Threads-mode toggle.  That total is further classified as: running; sleeping; stopped; zombie
![](./Attachemnts/Pasted%20image%2020220523142551.png)

* **cpu load** - shows CPU state percentages based on the interval since
the last refresh.
As a default, percentages for these individual categories are displayed.  Where two labels are shown below, those for more recent kernel versions are shown first.
    **us**, **user**    : time running un-niced user processes
    **sy**, **system**  : time running kernel processes
    **ni**, **nice**    : time running niced user processes
    **id**, **idle**    : time spent in the kernel idle handler
    **wa**, **IO-wait** : time waiting for I/O completion
    **hi** : time spent servicing hardware interrupts
	**si** : time spent servicing software interrupts
	**st** : time stolen from this vm by the hypervisor
	
* **memory load**
This portion consists of two lines which may express values in kibibytes (KiB)
As a default, Line 1 reflects physical memory, classified as:
           total, free, used and buff/cache
Line 2 reflects mostly virtual memory, classified as:
           total, free, used and avail (which is physical memory)
The **avail** number on line 2 is an estimation of physical memory
       available for starting new applications, without swapping.
       
* **pid of the process with the highest memory usage**
By selecting the %MEM column with `<` `>` and pressing `R` we get the process with the highest memory usage
![](./Attachemnts/Pasted%20image%2020220523143953.png)
<figcaption align = "center"><b>processes sorted by memory</b></figcaption>

* **pid of the process taking the most CPU time**
similarly to the previous paragraph, select sorting by %CPU
![](./Attachemnts/Pasted%20image%2020220523144050.png)
<figcaption align = "center"><b>processes sorted by cpu time</b></figcaption>

![](./Attachemnts/Pasted%20image%2020220523144250.png)
<figcaption align = "center"><b>htop utility</b></figcaption>

* to sort, press `F6` and select the desired parameter

![](./Attachemnts/Pasted%20image%2020220523144409.png)
<figcaption align = "center"><b>sorted by PID</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220523144626.png)
<figcaption align = "center"><b>sorted by PERCENT_CPU</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220523144650.png)
<figcaption align = "center"><b>sorted by PERCENT_MEM</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220523144714.png)
<figcaption align = "center"><b>sorted by TIME</b></figcaption>

* `F4` to filter
![](./Attachemnts/Pasted%20image%2020220523144800.png)
<figcaption align = "center"><b>filtered for sshd process</b></figcaption>
* `F3` to search
![](./Attachemnts/Pasted%20image%2020220523144941.png)
<figcaption align = "center"><b>searching</b></figcaption>
* press `F2`, add Hostname and Clock to Right column
![](./Attachemnts/Pasted%20image%2020220523145410.png)

## Part 11. Using the **df** utility##
![](./Attachemnts/Pasted%20image%2020220523145730.png)
![](./Attachemnts/Pasted%20image%2020220523145741.png)
<figcaption align = "center"><b>df output</b></figcaption>
-   partition size : 9336140 (~9.0G)
-   space used : 2662016 (~2.6G)
-   space free: 6180148 (~5.9G)
-   percentage used : 31%

* 1K-block = 1024 bytes

![](./Attachemnts/Pasted%20image%2020220523150302.png)
<figcaption align = "center"><b>df -Th</b></figcaption>
* `-T` - print file system type
* `-h` - print sizes in powers of 1024 (human-readable)
-   partition size : 9.0G
-   space used : 2.6G
-   space free: 5.9G
-   percentage used : 31%
* 1G = 1024 * 1024 * 1024 bytes
* file system type : ext4

## Part 12. Using the **du** utility##
![](./Attachemnts/Pasted%20image%2020220523151816.png)
<figcaption align = "center"><b>du output for /home /var/log and /var</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220523152616.png)
<figcaption align = "center"><b>human readable sizes</b></figcaption>

![](./Attachemnts/Pasted%20image%2020220523152024.png)
<figcaption align = "center"><b>du for all contents in /var/log</b></figcaption>

## Part 13. Installing and using the **ncdu** utility##

```bash
sudo apt-get install -y ncdu
```
```
ncdu /home
```
![](./Attachemnts/Pasted%20image%2020220523152700.png)
<figcaption align = "center"><b>ncdu for /home</b></figcaption>
```
ncdu /var
```
![](./Attachemnts/Pasted%20image%2020220523152735.png)
<figcaption align = "center"><b>ncdu for /var</b></figcaption>
```
ncdu /var/log
```
![](./Attachemnts/Pasted%20image%2020220523152756.png)
<figcaption align = "center"><b>ncdu for /var/log</b></figcaption>

## Part 14. Working with system logs##
![](./Attachemnts/Pasted%20image%2020220523153038.png)
<figcaption align = "center"><b>/var/log/dmesg</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220523153117.png)
<figcaption align = "center"><b>/var/log/syslog</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220523153151.png)
<figcaption align = "center"><b>/var/log/auth.log</b></figcaption>
![](./Attachemnts/Pasted%20image%2020220523153445.png)
<figcaption align = "center"><b>last login</b></figcaption>
```bash
sudo systemctl restart ssh.service
```
![](./Attachemnts/Pasted%20image%2020220523153820.png)
<figcaption align = "center"><b>sshd restart logs</b></figcaption>


## Part 15. Using the **CRON** job scheduler##

```bash
crontab -e
```

![](./Attachemnts/Pasted%20image%2020220523154516.png)
![](./Attachemnts/Pasted%20image%2020220523155455.png)
<figcaption align = "center"><b>/var/log/syslog</b></figcaption>