# ChangeIPwithbatFile
bat file that will show your IP address and allow you to quickly change it

I am constanly needing to change the IP address on my laptop or tablet to work on different systems so I created this bat file so that I could quickly change my IP. I added functionality to set it to DHCP also. I also have it list my current settings because I forget what I worked on last and maybe I don't need to change anything.
This program is also useful for situations when you know you will have to help a non-technical person change there IP address.
This program runs on windows machines. It will set the IP of the network interface called "Local Area Connection" which is what the hard wired network interface defaults to. If you need to change this because your network interface has a different name open the file in notepad (or right click the file and select "edit"), edit the following line
SET net="Local Area Connection"
Change the text in quotes to match the name of your networn interface

When you run the program-
If you do not want to change your network settings, just dont enter anything, if there's is not valid data, the program will not attempt to change the IP settings.

On windows 8 or higher, you will get a prompt asking if you want to allow this program to make changes to your device, if you don't select yes, you will not be able to change your IP settings. If you wish to avoid this step, save this program on your computer and then create a
shortcut to it, right click on the shortcut and select "properties", click on "advanced" then select the check box for "Run as administrator". In the future, always run the program from the shortcut.
