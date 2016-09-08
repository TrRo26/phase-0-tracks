# WEB SERVERS #

**What are some of the key design philosophies of the Linux operating system?**

	First (and perhaps foremost) is that Linux is an open source operating system that is completely free. Additionally, anyone can contribute to the OS and adjust it as they see fit. Also, in contrast to Windows or OS X, Linux was, and is continued to be, designed with the idea that the users of the system would be computer literate from the start.


**In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?**

	A VPS is a server that is created on a remote machine but is completely controlled by the creater of that server. It operates independently of other machines and operating systems and (at least to start) access is partitioned off from all but the creator of the VPS. Advantages of a VPS are that they are often cheaper, highly customizable, easily scalable and the creator has more control and far fewer limitations.  

**Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?**

	From my understanding, there is a principal in the security world known as the "principle of least privilege", which means that you should provide the lowest level of access in order for the program to run properly. If running the program with root access, should security be breached, that person would have access to everything, whereas if you run the program with a created user with more limited' access, should there be a breach, that person would be limited to that created user's level of access, and not the entire server (as they would with root access).
	