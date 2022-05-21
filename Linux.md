## Part 1. Installation of the OS##
![[Pasted image 20220516173428.png]]
<figcaption align = "center"><b>Checking the version</b></figcaption>
## Part 2. Creating a user##
![[Pasted image 20220516173558.png]]
<figcaption align = "center"><b>Creating a user</b></figcaption>
![[Pasted image 20220516173732.png]]<figcaption align = "center"><b>cat /etc/passwd output</b></figcaption>
## Part 3. Setting up the OS network##
```bash
hostnamectl set-hostname user-1
```
 ![[Pasted image 20220521173037.png]]
<figcaption align = "center"><b>change hostname</b></figcaption>
```bash
timedatectl set-timezone Europe/Moscow
```
![[Pasted image 20220521173339.png]]
<figcaption align = "center"><b>change timezone</b></figcaption>
![[Pasted image 20220521173642.png]]
<figcaption align = "center"><b>network interfaces</b></figcaption>
we need an **io interface** so that the virtual machine can interact with the real
**Dynamic Host Configuration Protocol** (DHCP)
![[Screenshot 2022-05-21 at 17.46.22.png]]



## Part 4. OS Update##
![[Pasted image 20220516131441.png]]
<figcaption align = "center"><b>refreshing package database</b></figcaption>
![[Pasted image 20220516131638.png]]
<figcaption align = "center"><b>available update/packages/pathces</b></figcaption>
![[Pasted image 20220516131753.png]]
<figcaption align = "center"><b>installing security updates and patches for all installed apps</b></figcaption>
![[Pasted image 20220516131913.png]]
<figcaption align = "center"><b>checking updates again</b></figcaption>



## Part 5. Using the **sudo** command##
`sudo` is a command-line program that allows trusted users to execute commands as root or another user.

![[Pasted image 20220521155404.png]]<figcaption align = "center"><b>executing sudo command for user-1</b></figcaption>
```bash
usermod -aG sudo user-1
```
![[Pasted image 20220521155738.png]]<figcaption align = "center"><b>check that the rights are obtained</b></figcaption>
![[Pasted image 20220521161015.png]]
<figcaption align = "center"><b>setting new hostname</b></figcaption>
## Part 6. Installing and configuring the time service
![[Pasted image 20220521164153.png]]
<figcaption align = "center"><b>current date and timezone</b></figcaption>
![[Pasted image 20220521164402.png]]
<figcaption align = "center"><b>enabling synchronization</b></figcaption>
