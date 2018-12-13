# Cyton Gamma 1500
Documntation for environment for Cyton Gamma 1500 by Robai with ROS and Gazebo through Windows 10.

## Dependencies:
* Windows 10 - ver 1803.
* WSL Ubuntu: 18.04 LTS Bionic Beaver.
* ROS Melodic Morenia.
* Xming.
* Gazebo ver 9.

## Step 1 - Configure WSL on Windows 10.

### 1.1 - Update to Windows 10 Creators update
* The Creators update of Windows 10 needs to be installed for ROS to work. If you are in doubt, which version is installed go to Settings -> System -> About and check that you have at least Version 1703.

[Image: Windows Version.](https://janbernloehr.de/assets/images/RosOnWsl/WinVersion.png)

If you need to update Windows, got to Windows Update and follow the instructions.

### 1.2 - Install the WSL and Bash on Windows.

In case you have used the WSL before applying the creators update, you may still have the trusty version (14.04) of Ubuntu for Windows installed. However, you need to upgrade to xenial (16.04). To check which version is actually installed, start an instance of bash and run `lsb_release -a`. The output should look like
```
$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 18.04 LTS
Release:        18.04
Codename:       Bionic Beaver
```
If it shows an older version, you have to uninstall and then reinstall bash on windows from the windows command line as follows **Warning: This will delete all of your existing data in WSL. Make a backup first**

```
lxrun /uninstall /full /y
lxrun /install
```
-------------------------------------------------------------------------------------------------------------------------------
Thanks for jan bernlöhr, original post can be foun in his [BLOG](https://janbernloehr.de/2017/06/10/ros-windows).


## Step 2 - Install ROS.

Now, press Win + R and write : Bash and press Enter.

### 2.1 Setup your sources.list.

Setup your computer to accept software from packages.ros.org.

```
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
```
### 2.2 Set up your keys.

```
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
```
If you experience issues connecting to the keyserver, you can try substituting hkp://pgp.mit.edu:80 or hkp://keyserver.ubuntu.com:80 in the previous command.

### 2.3 Installation.

First, make sure your Debian package index is up-to-date:
```
sudo apt update
```

Desktop-Full Install:ROS, rqt, rviz, robot-generic libraries, 2D/3D simulators and 2D/3D perception.
```
sudo apt install ros-melodic-desktop-full
```
### 2.4 Initialize rosdep.

Before you can use ROS, you will need to initialize rosdep. rosdep enables you to easily install system dependencies for source you want to compile and is required to run some core components in ROS.

```
sudo rosdep init
rosdep update
```
### 2.5 Environment setup
It's convenient if the ROS environment variables are automatically added to your bash session every time a new shell is launched:

```
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
```
If you have more than one ROS distribution installed, `~/.bashrc` must only source the setup.bash for the version you are currently using.

If you just want to change the environment of your current shell, instead of the above you can type:

```
source /opt/ros/melodic/setup.bash
```
If you use zsh instead of bash you need to run the following commands to set up your shell:

```
echo "source /opt/ros/melodic/setup.zsh" >> ~/.zshrc
source ~/.zshrc
```
### 2.6 Install dependencies for building packages

Up to now you have installed what you need to run the core ROS packages. To create and manage your own ROS workspaces, there are various tools and requirements that are distributed separately. For example, [rosinstall](http://wiki.ros.org/rosinstall) is a frequently used command-line tool that enables you to easily download many source trees for ROS packages with one command.

To install this tool and other dependencies for building ROS packages, run:
```
sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential
```

### 2.7 Go to Playground

Complete Step 3 and Now, to test your installation, please proceed to the [ROS Tutorials](http://wiki.ros.org/ROS/Tutorials).

-----------------------------------------------------------------------------------------------------------
For more details: [Official ROS Page](http://wiki.ros.org/melodic/Installation/Ubuntu)

## Step 3 - Install Xming.

To run applications with graphical output, you need to install an X Server on Windows. [Xming](http://www.straightrunning.com/XmingNotes/)

After you have installed Xming, you also need to configure WSL to use it. To do so modify you .bashrc as follows
```
echo "export DISPLAY=:0" >> ~/.bashrc
source ~/.bashrc
```

### Optional 3.1 - Run turtle_sim

The popular turtle_sim tutorial works fine WSL as well.

Make sure you have an X Server installed, configured and running as described above.
1* Start a new bash prompt and run `roscore`.
2* Start a second bash prompt and run `rosrun turtlesim turtle_teleop_key`.
3* Start a third bash prompt and run `rosrun turtlesim turtlesim_node`. 
You can control the turtle by using the arrow keys by going back to the second prompt.

[Image: Turtle Sim Output](https://janbernloehr.de/assets/images/RosOnWsl/turtle1.PNG)

--------------------------------------------------------------------------------------------------------------

## Step 4 - Install Gazebo.

In bash:
```
curl -sSL http://get.gazebosim.org | sh
```
Open Xming and Run in bash:

```
gazebo
```
--------------------------------------------------------------------------------------------------------------
For more details [Gazebo Installation Guide](http://gazebosim.org/tutorials?tut=install_ubuntu&cat=install).
