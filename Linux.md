## Part 1. Installation of the OS##
![[Pasted image 20220516173428.png]]
<figcaption align = "center"><b>Checking the version</b></figcaption>
## Part 2. Creating a user##
![[Pasted image 20220516173558.png]]
<figcaption align = "center"><b>Creating a user</b></figcaption>
![[Pasted image 20220516173732.png]]<figcaption align = "center"><b>cat /etc/passwd output</b></figcaption>
## Part 3. Setting up the OS network##
![[Pasted image 20220516133910.png]]
<figcaption align = "center"><b>default hostname</b></figcaption>




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
