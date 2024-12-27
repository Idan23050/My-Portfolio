Part 1 “Basic Commends”
Log into su user, navigate to the home/desktop directory and perform the following actions:

Create 3 new directories and 3 new files using a single command.


mkdir folder{1..3} | touch file{1..3}
Move the files to one of the directories you created.


mv file{1..3} folder1
Navigate to the directory containing the files and move the files to another directory.


mv file{1..3} /home/kali/folder3
Delete the files from the directory.


rm file{1..3}
2. Check the path of the current directory.


pwd
3. Navigate to the desktop directory and display the files and folders it contains.


cd /Desktop

ls -la
4. Check which user you are logged in as


whoami
5. Change the user password.


passwd 
6. What does the command CD do?

Change Directory (CD) — with this commend u can move in the directory’s

7. What does the command CD / do?

change directory to specific directory by hes path location

8. Execute CD and CD / and check the output.


cd
cd /
9.Clear the terminal from the output.



10.Create a file using NANO and write your favorite operating system’s name. In addition, find a way to display the current operating system type and add the output to the file.


uname -a 
nano [filename]
cat [filename]
11. Execute a command that will display the content of the file.


cat [filename]
12. Create three hidden files.


touch .hiddenfolder{1..3}

ls

to check if it hidden
13. Execute a command that will display these files


ls -la 
14.Delete the hidden files created in step 13.


rm .hiddenfolder{1..3}   

ls -la
part 2 search commands
Create files in every system directory and display the paths of these
files.


whereis [filename]
2. Search for all files in the system that start with the word “bash.”


ls -la | grep bash
3. Search for all files in the system that start with 5 numbers.


find -name "*[0-5]*"
4. Search for all files in the system that start with the word “bash.


find -name "*bash*"
5. Search for all directories smaller than 4MB


find . -type d -size -4096c
6. Search for all files smaller than 3MB


find . -type f -size -3096c
part 3: user & group management
create new user

adduser [username]
2.Set a password for the user you created.


passwd [username]
3. Create a new group.


groupadd [groupname]
4. Move the user you created in item 1 to the new group.


usermod -a -G [groupname] [username]
5. Display the new user in the group.


groups [username]
6. Where are all the user directories in the system located?

/home/usr

7. Switch to another user


su [username]
8. Create a directory with the new user.


mkdir [directory name]
9. What action must you perform to create a new directory?

to check you are in the directory that you want to open on and type the right command

10. Switch to the ROOT user, create a new user, and add them to the SUDOERS group with only one command.


adduser [username]

adduser [username] sudo

groups [username]
part 4 permissions.
Create two new files in one of the directories you created in part 1 and allow only write permissions for all files in that directory.


touch [filename]{number..number}
2. For one file of your choice in the directory, give all possible permissions


chmod 777 [filename]
3. Choose one file and change its owner.


chown [username] [file/groupname]
part 5 ifconfig and Address settings.
1. Execute the ifconfig command


ifconfig
2. Change the output of the command to uppercase letters


ifconfig | tr '[:lower:]' '[:upper:]'
3. Filter the command to display only the IP and SUBNET MASK.


ifconfig | grep broadcast
4. Write the output to a file named “ip.log.”

Add the following to the ip.log file: whoami, last, and hostname.


echo "text" > [filename]
5. Set a static IP in the terminal.


ifconfig [interface] [ip address] netmask [netmask ip]
part 6: remote control and telnet services.
Install telnet in the operating system

apt-get install telnetd && apt install telnet
2. Restart the service.

systemctl restart telnetd
3. Check the status of the service

systemctl status telnetd
4. Create directories and files to ensure the connection works.

telnet [ip address]

cd /Desktop

mkdir Test{1..4}

touch Test{1..4}
part 7: SSH connection
Start the SSH service and make sure the service is running


apt-get install ssh
systemctl start ssh
systemctl enable ssh
systemctl status ssh
2. Connect to kali Linux through a Windows machine and create a directory on Kali Desktop named WINDOWS_1



ssh kali@192.168.1.246 

cd /Desktop
mkdir WINDOWS_1
 ls 
part 8: vsftpd.
Download the latest version of vsftpd


apt-get install vsftpd
systemctl start vsftpd
systemctl enable vsftpd
systemctl status vsftpd
2. Configure VSFTPD and start the service.



3. Transfer a file from kali machine to WINDOWS machine



QUESTIONS part 9
What are ROOT directories? Choose three and explain them.
/bin — Binaries
The /bin folder contains programs that are essential for the system to boot and run. So, if you destroy this folder, your system won’t boot and run.

/root — Root Home
This is the home directory of your root user. Don’t mix it with the / root directory. The / directory is the parental directory for the whole system, whereas this /root directory is the same as your user home directory but it is for the root account.

/sbin — System Binaries
Similar to /bin this folder contains binaries for essential system tasks but they are meant to be run by the super user, in other words, the administrator of the system.

2. Explain the following terms:

Encryption — Hashing — Symmetric encryption — Asymmetric encryption.

Encryption -Encryption is the method by which information is converted into secret code that hides the information’s true meaning. The science of encrypting and decrypting information is called cryptography

Hashing — Hashing is the process of translating a given key into a code. A hash function is used to substitute the information with a newly generated hashcode. More specifically, hashing is the practice of taking a string or input key, a variable created for storing narrative data, and representing it with a hash value, which is typically determined by an algorithm and constitutes a much shorter string than the original.

Symmetric encryption- Symmetric encryption is a means of protecting data using a secret key to encrypt (lock) and decrypt (unlock) it. The sender and recipient share the key or password to gain access to the information. The key can be a word “a phrase” or a nonsensical or random string of letters, numbers, and symbols.

Asymmetric encryption — Asymmetric encryption, also known as public key encryption, uses a public key-private key pairing: data encrypted with the public key can only be decrypted with the private key.

3.* When installing SSH, the configuration file must be changed: — Why?

Answer: The SSH protocol creates a secure connection between two remote machines. An SSH config file helps easily configure the default values for these connections and enables efficient streamlining of SSH connections.

Are you familiar with another configuration file and for which service?
Answer : For Tectia SSH configuration, see “Tectia SSH Server Administrator Manual”.

For configuring passwordless public key authentication, see “ssh-keygen”.

What is the use of SSH?
Answer: SSH is often used to “login” and perform operations on remote computers but it may also be used for transferring data.
Is SSH encrypted?
Answer: All SSH traffic is encrypted. Whether users are transferring a file, browsing the web or running a command, their actions are private. While it is possible to use SSH with an ordinary user ID and password as credentials, SSH relies more often on public key pairs to authenticate hosts to each other.
4. What is a KERNEL?

Answer : The kernel is a computer program at the core of a computer’s operating system and generally has complete control over everything in the system. The kernel is also responsible for preventing and mitigating conflicts between different processes.

5. What needs to be done to create a connection between two virtual machines?

Explain each step:

Create a host-only network (switch) with DHCP enabled.
Verify that both VMs have a virtual network interface and attach it to the host-only switch.
Start the two VMs and verify their IP addresses.
Test the connectivity by using the ‘’ping’’ command on each VM.
6. What is ping?

Ping is a command-line utility, available on virtually any operating system with network connectivity, that acts as a test to see if a networked device is reachable. The ping command sends a request over the network to a specific device.

7. When giving permissions on files and folders, we use three numbers, what are these numbers and what do they mean? Why do we write them three times? (777

Answer : There are three user categories: “User” (the owner of the file), “Group” (the security group you are in), and “Other” (for the world to see). Each category has three permissions that can be set: “r, w,” and “x” to read, write, and execute a file, respectively. Permissions consist of three numbers: 4 for Read, 2 for Write, and 1 for Execute access. By adding these numbers together, you form the permissions that make up one digit. This table can be used as a quick reference

8. Can we create two folders with the same name, one in lowercase and the other in upper case?

Answer : Yes

Thank you for watching , hope it was helpful for you !
