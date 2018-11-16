# Linfi-Shot
CLI linux tool to see if sketchy programs do sketchy things to important files.

Linfi Shot is a Linux-based command line tool capable of spotting any attempted or successful changes to the Linux filesystem. This tool is perfect for an investigator, researcher, or any individual that is suspicious of certain programs or processes and would like to quickly verify their suspicion of how it may noticeably or unnoticeably change the filesystem. This allows the investigator to avoid the scanning or imaging an entire system to get this specific data. 

Besides the quick functionality of this tool, another key component is how user friendly it is. Linfi Shot will automatically summarize its findings in a neat formatted user report along with generate an external visual of a scatter plot graph that represents the filenames, program that modified the files, and the timestamp of modification. Linfi Shot is something that can easily be added to a forensics toolkit due to low dependencies and the specific purpose it fulfills.


How to setup the tool:
1. Make sure you have the following tool dependicies.

Tool Dependicies
Auditd:
`sudo apt-get install auditd`</br>
Python3:
`sudo apt-get install python3`</br>
Pandas: </br>
`sudo apt-get install python-pip`</br>
`sudo pip install numpy`</br>
`sudo pip install pandas`</br>
Matplotlib:
`sudo apt-get install python3-matplotlib`</br>

2. Download the project folder.

3. Navigate into the project folder and start tool:
`sudo ./linfi`










  


