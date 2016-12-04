#!/bin/bash

# Variables
DEFAULT_ROUTE=$(ip route show default | awk '/default/ {print $3}')
IFACE=$(ip route show | awk '(NR == 2) {print $3}')
JAVA_VERSION=`java -version 2>&1 |awk 'NR==1{ gsub(/"/,""); print $3 }'`
MYIP=$(ip route show | awk '(NR == 2) {print $9}')




# Update Kali
function updatekali {
clear
echo -e "
\033[36m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\033[m
                                \033[32mUPDATE KALI\033[m
\033[34m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\033[m"

select menusel in "Update Kali Sana(2.0) To Kali Rolling(2.2)" "Update Kali Sana(2.0) To Kali Rolling(2.2) {Clean All Data} " "Update Source List {Included Kali Sana Repositories}" "Back to Menu"; do
case $menusel in
        "Update Source List {Included Kali Sana Repositories}")
                
		echo -e "\033[36m******     Adding New Source List (Includes Sana Repositories)    ******\033[m"
		rm /etc/apt/sources.list
		echo "" >> /etc/apt/sources.list
		echo 'deb http://http.kali.org/kali kali-rolling main non-free contrib' >> /etc/apt/sources.list
		echo 'deb-src http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list
		echo 'deb http://old.kali.org/kali sana main non-free contrib' >> /etc/apt/sources.list
		apt-get update
                echo -e "\033[m Your Source List Is Updated.... Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\033[m"
		pause
		clear ;;	
	        "Update Kali Sana(2.0) To Kali Rolling(2.2)")
		echo -e "\e[1;31m WARNING!!! Your Kali Sana Will Update To Kali Rolling, Take A Backup Of Your Data If The Installation Fails\e[0m"
                echo -e ""
                echo -e "Are You Sure You Want To Continue? [Y/N]"
                    read install 
                    if [[ $install = Y || $install = y ]] ; then 
                clear
		echo -e "\033[36m******    Updating Kali Sana(2.0) To Kali Rolling   ******(2.2)\033[m"
		rm /etc/apt/sources.list
		echo "" >> /etc/apt/sources.list
		echo 'deb http://http.kali.org/kali kali-rolling main non-free contrib' >> /etc/apt/sources.list
		echo 'deb-src http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list
		#apt-get update && apt-get -y dist-upgrade
		apt-get update && apt-get -y upgrade 
		echo -e "\033[33m Your Old Kali(2.0) Is Updated To Latest Version(Kali Rolling). Please Reboot Your Computer    \033[m{Checkout **MYSTRY BOX**}"
                else
                   echo -e "Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\033[m"
                fi
		pause
		clear ;;
	
	        "Update Kali Sana(2.0) To Kali Rolling(2.2) {Clean All Data} ")
                echo -e "\e[1;31m WARNING!!! Your Kali Sana Will Update To Kali Rolling, Your DATA Will Be REMOVED\e[0m"
                echo -e ""
                echo -e "Are You Sure You Want To Continue? [Y/N]"
                    read install 
                    if [[ $install = Y || $install = y ]] ; then 
		clear
		echo -e "\033[36m******    Updating Linux To Latest Version{Will Clean Your Data}    ******\033[m"
		apt-get update && apt-get -y dist-upgrade && apt-get autoremove -y && apt-get -y autoclean
		echo -e "\033[\033[m33m Your Old Kali(2.0) Is Updated To Latest Version & Your Data Is Cleaned(Kali Rolling). Please Reboot Your Computer    \033[m{Checkout **MYSTRY BOX**}\033m" 
		else
                    echo -e "Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\033[m"
                fi
                pause
		clear ;;
	
               "Back to Menu")
                
                clear
		mainmenu ;;
		
	*)
		screwup
		updatekali ;;

esac

break

done
}
# Install Bleachbit
function installbleachbit {
	echo -e "\e[1;31m****** Bleachbit Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
	read install
	if [[ $install = Y || $install = y ]] ; then
		echo -e "\e[36m !!!!  Installing Bleachbit !!!!\e[0m"
		apt-get -y install bleachbit 
		echo -e "\e[34m Congratulations!!, You've Successfully Installed Bleachbit \e[0m"		
	else
		echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
                fi
}
# Install GoldenDict
function installGoldendict {
	echo -e "\e[1;31m******  GoldenDict Installtion Wizard  ******\e[0m"
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
	read install
	if [[ $install = Y || $install = y ]] ; then
		echo -e "\e[36m !!!!  Installing GoldenDict  !!!!\e[0m"
		apt-get -y install goldendict 
		echo -e "\e[34m Congratulations!!, You've Successfully Installed GoldenDict\e[0m"		
	else
		echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
	fi	
}
# Install GnomeTweakTool
function installgnometweaktool {
	echo -e "\e[1;31m******  GnomeTweakTool Installtion Wizard  ******\e[0m"
        echo -e "Are You Sure You Wanna Install It? (Y/N)"
	read install
	if [[ $install = Y || $install = y ]] ; then
		echo -e "\e[36m !!!!  Installing GnomeTweakTool  !!!!\e[0m"
		apt-get -y install gnome-tweak-tool
		echo -e "\e[34m Congratulations!!, You've Successfully Installed GnomeTweakTool \e[0m"		
	else
		echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
	fi
	
	
}
# Install ibus
function installibus {
        echo -e "\e[1;31m******  ibus Installtion Wizard  ******\e[0m"
        echo -e "Are You Sure You Wanna Install It? (Y/N)"
	read install
	if [[ $install = Y || $install = y ]] ; then
		echo -e "\e[36m !!!!  Installing ibus  !!!!\e[0m"
		apt-get -y install ibus && apt-get -y install ibus-unikey
		echo -e "\e[34m Congratulations!!, You've Successfully Installed ibus \e[0m"	
	else
		echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
	fi
	
	
}
# Install libreoffice
function installlibreoffice {
	echo -e "\e[1;31m******  libreoffice Installtion Wizard  ******\e[0m"
        echo -e "Are You Sure You Wanna Install It? (Y/N)"
	read install
	if [[ $install = Y || $install = y ]] ; then
		echo -e "\e[36m !!!!  Installing libreoffice  !!!!\e[0m"
		apt-get -y install libreoffice
		echo -e "\e[34m Congratulations!!, You've Successfully Installed libreoffice\e[0m"		
	else
		echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
	fi
	
	
}
# Install Veil-Framework
function installveil {
        echo -e "\e[1;31m******  Veil-Framework Installtion Wizard  ******\e[0m"
        echo -e "Are You Sure You Wanna Install It? (Y/N)"
        read install
	if [[ $install = Y || $install = y ]] ; then	
	         echo -e "\e[36m !!!!  Installing Veil-Framework  !!!!\e[0m"
	sleep 2
	         git clone https://github.com/Veil-Framework/Veil-Evasion.git /opt/BypassAV/Veil-Evasion/
	         cd /opt/BypassAV/Veil-Evasion/setup
	         ./setup.sh -s
        echo -e "\e[34m Congratulations!!, You've Successfully Installed Veil-Framework\e[0m"
 else
	echo -e "\33[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\33[0m"
	fi

}
# Install Google Chrome
function installgooglechrome {
	echo -e "\e[1;31m******  Google Chrome Installtion Wizard  ******\e[0m"
	echo "Are You Sure You Wanna Install It? (Y/N)"
	read install
	if [[ $install = Y || $install = y ]] ; then
			read -p "Which Type Of PC Are You Using? [Enter:- 32 or 64]" operatingsys
			if [ "$operatingsys" == "32" ]; then 
				echo -e "\e[1;31m@@@@@@  Downloading Google Chrome for Linux 32-bit  @@@@@@@\e[0m"
				wget https://archive.org/download/google-chrome-stable_48.0.2564.116-1_i386/google-chrome-stable_48.0.2564.116-1_i386.deb
				echo -e "\e[33m Completed Downloading...... \e[0m"
				echo -e "\e[1;36m!!!! Installing Google Chrome  !!!!\e[0m"
				dpkg -i google-chrome-stable_48.0.2564.116-1_i386.deb
				rm google-chrome-stable_48.0.2564.116-1_i386.deb
				apt-get -f install
				echo -e "\e[34m Congratulations!!, You've Successfully Installed Google Chrome\e[0m"
			else
				echo -e "\e[1;31m@@@@@@  Downloading Google Chrome for Linux 64-bit  @@@@@@@\e[0m"
				wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
				echo -e "\e[33m Completed Downloading...... \e[0m"
				echo -e "\e[1;36m!!!! Installing Google Chrome  !!!!\e[0m"
				dpkg -i google-chrome-stable_current_amd64.deb
				rm google-chrome-stable_current_amd64.deb
				apt-get -f install
				echo -e "\e[34m Congratulations!!, You've Successfully Installed Google Chrome\e[0m"
				fi
		        else
			         echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
		fi
}
# Install Tor Browser
function installtorbrowser {
	echo -e "\e[1;31m****** Tor Browser Installtion Wizard  ******\e[0m"
	echo "Are You Sure You Wanna Install It? (Y/N)"
	read install
	if [[ $install = Y || $install = y ]] ; then
			read -p "Which Type Of PC Are You Using? [Enter:- 32 or 64]" operatingsys
			if [ "$operatingsys" == "32" ]; then 
				echo -e "\e[1;31m@@@@@@  Downloading Tor Browser for Linux 32-bit  @@@@@@@\e[0m"
				cd /root/Desktop
				wget https://www.torproject.org/dist/torbrowser/6.0.5/tor-browser-linux32-6.0.5_en-US.tar.xz
				echo -e "\e[33m Completed Downloading...... \e[0m"
				echo -e "\e[1;36m!!!! Installing Tor Browser  !!!!\e[0m"
				tar -xf tor-browser-linux32-6.0.5_en-US.tar.xz
				cd /root/Desktop/tor-browser_en-US/Browser/
				mv start-tor-browser start-tor-browser.txt
				sed -i 's/`id -u`" -eq 0/`id -u`" -eq 1/g' start-tor-browser.txt
				mv start-tor-browser.txt start-tor-browser
				cd ..
				ls -ld
				chown -R root:root .
				ls -ld
				echo -e "\e[34m Congratulations!!, You've Successfully Installed Tor Browser\e[0m"
			else
                                echo -e "\e[1;31m@@@@@@  Downloading Tor Browser for Linux 64-bit  @@@@@@@\e[0m"
				cd /root/Desktop
				wget https://www.torproject.org/dist/torbrowser/6.0.5/tor-browser-linux64-6.0.5_en-US.tar.xz
				echo -e "\e[1;31m@@@@@@  Downloading Tor Browser for Linux 64-bit  @@@@@@@\e[0m"
				echo -e "\e[1;36m!!!! Installing Tor Browser  !!!!\e[0m"
				tar -xf tor-browser-linux64-6.0.5_en-US.tar.xz
				cd /root/Desktop/tor-browser_en-US/Browser/
				mv start-tor-browser start-tor-browser.txt
				sed -i 's/`id -u`" -eq 0/`id -u`" -eq 1/g' start-tor-browser.txt
				mv start-tor-browser.txt start-tor-browser
				cd ..
				ls -ld
				chown -R root:root .
				ls -ld
				echo -e "\e[34m Congratulations!!, You've Successfully Installed Tor Browser\e[0m"
			fi
		else
			echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
		fi
}
# Install VPN
function installvpn {
	echo -e "\e[1;31m****** VPN Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Installing VPN  !!!!\e[0m"
				sleep 2
				apt-get -y install network-manager-openvpn
				apt-get -y install network-manager-openvpn-gnome
				apt-get -y install network-manager-pptp
				apt-get -y install network-manager-pptp-gnome
				apt-get -y install network-manager-strongswan
				apt-get -y install network-manager-vpnc
				apt-get -y install network-manager-vpnc-gnome
                                echo -e "\e[34m Congratulations!!, You've Successfully Installed VPN\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
			fi
}
# Install Archive-Manager
function installarchivemanager {
	echo -e "\e[1;31m****** Archive-Manager Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Installing Archive-Manager !!!!\e[0m"
				sleep 2
				apt-get -y install unrar unace rar unrar p7zip zip unzip p7zip-full p7zip-rar file-roller
                        echo -e "\e[34m Congratulations!!, You've Successfully Installed Archive-Manager\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
			fi
}
# Install bittorrent client
function installbittorrent {
	echo -e "\e[1;31m****** bittorent client Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Installing bittorrent client !!!!\e[0m"
				sleep 2
				apt-get -y install deluge-torrent
				echo -e "\e[34m Congratulations!!, You've Successfully Installed bittorrent client\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
			fi
}
# Install Sound Mute Fix (Kali 2.0)
function installfixsoundmute {
	echo -e "\e[1;31m NOTE:- \033[m \033[m This Will Fix Sound Mute When Kali Boots Up!!!\e[0m"
        echo -e "\e[1;31m****** asla-utils(Sound-Mute Fix) Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Installing !!!!\e[0m"
				sleep 2
				apt-get -y install alsa-utils
                                sleep 2
                                echo -e "\e[36m !!!!  FIXING...... !!!!\e[0m"
				echo -e "\e[34m Congratulations!!, You've Successfully Installed alsa-utils which will fix Sound Mute When Your System Boots Up\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
			fi
}
# Install Firefox
function installfirefox {
	echo -e "\e[1;31m****** Firefox Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Installing Firefox !!!!\e[0m"
				sleep 2
				apt-get -y remove iceweasel
				echo -e deb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main | tee -a /etc/apt/sources.list > /dev/null
				apt-key adv –recv-keys –keyserver keyserver.ubuntu.com C1289A29
				apt-get update
				apt-get --force-yes install firefox-mozilla-build				
				echo -e "\e[34m Congratulations!!, You've Successfully Installed Firefox\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
			fi
}
# Install MinGW                                     
function installMinGW {
	echo -e "\e[1;31m****** MinGW  Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Installing MinGW  !!!!\e[0m"
				sleep 2
				apt-get -y -qq install mingw-w64 binutils-mingw-w64 gcc-mingw-w64 cmake
				apt-get -y -qq install mingw-w64-dev mingw-w64-tools
				apt-get -y -qq install gcc-mingw-w64-i686 gcc-mingw-w64-x86-64
				apt-get -y -qq install mingw32				
				echo -e "\e[34m Congratulations!!, You've Successfully Installed MinGW \e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
			fi
}
# Install Vmware
function installVmware {
	echo -e "\e[1;31m****** VMware-Tools Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Installing VMware-Tools!!!!\e[0m"
				sleep 2
				apt-get -y -qq install open-vm-tools-desktop fuse 				
				echo -"\e[34m Congratulations!!, You've Successfully Installed VMware-Tools\e[0m"
			else
				echo -"\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
			fi
}
# Install VirutalBox
function installvirtualbox {

	echo -e "\e[1;31m****** VirutalBox Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Installing VirutalBox  !!!!\e[0m"
				sleep 2
				apt-get update && apt-get install -y linux-headers-$(uname -r)
				apt-get install virtualbox
                                echo -"\e[34m Congratulations!!, You've Successfully VirutalBox\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\e[m"   
                                echo -e "\e[31mCheckout **MYSTRY BOX**\e[0m"
			fi
}
# Install Java 8
function installjava {
	echo -e "\e[1;31m****** Java 8 Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Installing Java 8!!!!\e[0m"
				sleep 2
				echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
				echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
				apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
				apt-get update
				apt-get -y install oracle-java8-installer
				echo -e "\e[34m Congratulations!!, You've Successfully Installed Java 8\e[0m"
				else
				echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
			fi
}
# Install Sound Fix Kali Rolling (2.2)
function installsoundkali2016 {
	echo -e "\e[1;31m NOTE:- \033[m \033[m This Will Fix Sound Mute When Kali Rolling(2.2) Boots Up!!!\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Fix It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Fixing Sound Mute On Kali Rolling (2.2)!!!!\e[0m"
				sleep 2
				systemctl --user enable pulseaudio
				systemctl --user start pulseaudio
                        echo -e "\e[34m Congratulations!!, You've Successfully Fixed Sound Mute Problem on Kali Rolling (2.2)\e[0m"   
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
			fi
}
# System Tools Menu
function softwaresandystemtools {
clear
echo -e "
\033[32m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\033[m
                                     System Tools Menu
\033[32m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\033[m"
select menusel in "Google Chrome"  "Firefox" "Tor Browser" "VPN" "Fix Sound Mute On Kali Sana(2.0)" "Fix Sound Mute on Kali Rolling(2.2)" "Java" "VirtualBox" "Vmware-tools" "GnomeTweakTool" "GoldenDict" "Bleachbit" "Archive-Manager" "bittorrent client" "MinGW" "libreoffice" "ibus" "Install All Tools" "Back to Menu"; do
case $menusel in
	"VirtualBox")
		installvirtualbox
		pause
		softwaresandystemtools ;;
	
	"Firefox")
		installfirefox
		pause
		softwaresandystemtools  ;;

	"Java")
		installjava
		pause
		softwaresandystemtools ;;

	"MinGW")
		installMinGW
		pause
		softwaresandystemtools ;;
		
	"Vmware-tools")
		installVmware
		pause
		softwaresandystemtools ;;

	"Bleachbit")
		installbleachbit
		pause
		softwaresandystemtools ;;
	
	"GoldenDict")
		installGoldendict
		pause
		softwaresandystemtools ;;

	"Google Chrome")
		installgooglechrome
		pause
		softwaresandystemtools ;;

	"GnomeTweakTool")
		installgnometweaktool
		pause
		softwaresandystemtools ;;
	"ibus")
		installibus
		pause
		softwaresandystemtools ;;

	"libreoffice")
		installlibreoffice
		pause
		softwaresandystemtools ;;

	"VPN")
		installvpn
		pause
		softwaresandystemtools ;;

	"Tor Browser")
		installtorbrowser
		pause
		softwaresandystemtools ;;
	"Fix Sound Mute On Kali Sana(2.0)")
		installfixsoundmute
		pause
		softwaresandystemtools ;;

        "Fix Sound Mute on Kali Rolling(2.2)")
                installsoundkali2016
                pause 
                softwareandystemtools ;;

	"Archive-Manager")
		installarchivemanager
		pause
		softwaresandystemtools ;;

	"bittorrent client")
		installbittorrent
		pause
		softwaresandystemtools ;;

	"Install All Tools")
		installvirtualbox
		installbleachbit
		installGoldendict
		installgnometweaktool
		installibus
		installlibreoffice
		installvpn
		installtorbrowser
		installfixsoundmute
		installsoundkali2016
		installgooglechrome
		installarchivemanager
		installbittorrent
		installfirefox
		installMinGW
		installVmware
		echo -e "\e[34m Congratulations!!, You've Successfully Installed All The Tools\e[0m"
		pause
		softwaresandystemtools ;;

	"Back to Menu")
		clear
		mainmenu ;;
		
	*)
		screwup
		softwaresandystemtools ;;
	
		
esac

break

done
}
# Update Metasploit
function updatemetasploit {
if [ ! -f /opt/dirs3arch.py ]; then
	echo -e "\e[1;31m****** Metasploit Update Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Update It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Updating Metasploit  !!!!\e[0m"
				sleep 2
				git clone https://github.com/rapid7/metasploit-framework.git /opt/exploitation/metasploit/
                                echo -e "\e[34m Congratulations!!, You've Successfully Updated Metasploit\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\e[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
			fi
	else
		echo -e "\e[31m Metasploit Is already on Latest Version On This Machine. \e[0m"
	fi
}
# Update Social Engineering Toolkit
function updateSET {
	echo -e "\e[1;31m****** Social Engineering Toolkit Update Wizard ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Update It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Social Engineering Toolkit !!!!\e[0m"
				sleep 2
				rm -rf /opt/exploitation/set/
				git clone https://github.com/trustedsec/social-engineer-toolkit.git /opt/exploitation/set/
				mv /usr/share/set/config/ /opt/exploitation/set/
				echo -"\e[34m Congratulations!!, You've Successfully Updated Social Engineering Toolkit\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\e[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
			fi
}
# Update Beef
function updateBeef {
	echo -e "\e[1;31m****** Beef Update Wizard ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Update It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Updating Beef  !!!!\e[0m"
				sleep 2
				git clone https://github.com/beefproject/beef.git /opt/exploitation/beef/
				echo -e "\e[34m Congratulations!!, You've Successfully Updated Beef\e[0m"
			else
				echo -"\e[32m Thank You!! For Using Our Tool\e[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
			fi
}
# Update Veil-Evasion
function updateVeil {
	echo -e "\e[1;31m****** Veil-Evasion Update Wizard ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Update It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Updating Veil-Evasion  !!!!\e[0m"
				sleep 2
				cd /opt/BypassAV/
				rm -rf Veil-Evasion/
				git clone https://github.com/Veil-Framework/Veil-Evasion.git /opt/BypassAV/Veil-Evasion/
				echo -e "\e[34m Congratulations!!, You've Successfully Updated Veil-Evasion\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\033[m   \033[31m{Checkout **MYSTRY BOX**}\e[0m"
			fi
}
# Update Pre-Installed Tools
function updatetools {
clear
echo -e "
\033[32m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\033[m
                          Update Pre-Installed Tools
\033[32m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\033[m"
select menusel in "Metasploit" "Beef" "Veil-Evasion" "Social Engineering Toolkit" "Update All" "Back to Menu"; do
case $menusel in
	"Metasploit")
		updatemetasploit
		pause
		updatetools ;;
	"Beef")
		updateBeef
		pause
		updatetools ;;
	"Veil-Evasion")
		updateVeil
		pause
		updatetools ;;
	"Social Engineering Toolkit")
		updateSET
		pause
		updatetools ;;

	"Update All")
		updatemetasploit
		updateBeef
		updateVeil
		updateSET
		echo -e "\e[34m Congratulations!!, You've Successfully Updated All Pre-Installed Tools\e[0m"
		pause
		updatetools ;;

	"Back to Menu")
		clear
		mainmenu ;;
		
	*)
		screwup
		updatetools ;;
	
		
esac

break

done
}
# Install Fluxion
function installfluxion {
if [ ! -f /opt/wireless/fluxion ]; then
	echo -e "\e[1;31m****** Fluxion Installtion Wizard  ******\e[0m"
        echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Fluxion Installation Started...  !!!!\e[0m"
				sleep 2
				git clone https://github.com/deltaxflux/fluxion.git /opt/wireless/fluxion
				cd /opt/wireless/fluxion
				chmod +x Installer.sh
				./Install.sh
                                echo -e "\e[34m Congratulations!!, You've Successfully Installed Fluxion\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\e[m"   
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
	else
		echo -e "\e[31m Fluxion Is already Installed On This Machine. \e[0m"
	fi
}
# Install Shellter
function installshellter {
if [ ! -f /usr/bin/shellter ]; then
	echo -e "\e[1;31m****** Shellter Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
		if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  Shellter Installation Started...  !!!!\e[0m"
				sleep 2
				apt-get -y install shellter
                                echo -e "\e[34m Congratulations!!, You've Successfully Installed Shellter\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
	else
		echo -e "\e[31m Shellter Is already Installed On This Machine. \e[0m"
	fi
}
# Install Avoid
function installavoid {

	echo -e "\e[1;31m****** Avoid Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! Avoid Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/BypassAV/Avoid/
				git clone https://github.com/nccgroup/metasploitavevasion.git /opt/BypassAV/Avoid/
                                echo -e "\e[34m Congratulations!!, You've Successfully Installed Avoid\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install mitmf
function installmitmf {
if [ ! -f /opt/MITMf-master/mitmf.py ]; then
	echo -e "\e[1;31m****** mitmf Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! mitmf Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/Sniffing-Spoofing/mitmf/
				git clone https://github.com/byt3bl33d3r/MITMf.git /opt/Sniffing-Spoofing/mitmf/
				cd  /opt/Sniffing-Spoofing/mitmf/
				./setup.sh
				apt-get -y install python-dev python-setuptools libpcap0.8-dev libnetfilter-queue-dev
				pip install --upgrade -r requirements.txt
                                echo -e "\e[34m Congratulations!!, You've Successfully Installed mitmf\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
	else
		echo -e "\e[31m mitmf Is already Installed On This Machine. \e[0m"
	fi
} 
# Install commix                         
function installcommix {
	echo -e "\e[1;31m****** commix Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  commix Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/exploitation/WebApp/commix-master/
				git clone https://github.com/stasinopoulos/commix.git /opt/exploitation/WebApp/commix-master/
                                echo -e "\e[34m Congratulations!!, You've Successfully Installed commix\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install EyeWitness
function installeyswitness {
	echo -e "\e[1;31m****** EyeWitness Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  EyeWitness Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/intelligence-gathering/WebApp/EyeWitness-master/
				git clone https://github.com/ChrisTruncer/EyeWitness.git /opt/intelligence-gathering/WebApp/EyeWitness-master/
				cd /opt/EyeWitness-master/setup/
				chmod a+x setup.sh
				./setup.sh
                                echo -e "\e[34m Congratulations!!, You've Successfully Installed EyeWitness\e[0m"
			else
				echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install gcat
function installgcat {
	echo -e "\e[1;31m****** gcat Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! gcat Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rm /opt/Maintaining-Access/OS-Backdoor/gcat-master/
				git clone https://github.com/byt3bl33d3r/gcat.git /opt/Maintaining-Access/OS-Backdoor/gcat-master/
                                echo -e "\e[34m Congratulations!!, You've Successfully Installed gcat\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install maligno
function installmaligno {
if [ ! -f /opt/BypassAV/maligno/maligno_srv.py ]; then
	echo -e "\e[1;31m****** maligno Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! maligno Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/BypassAV/maligno/
				cd /opt/
				mkdir BypassAV/
				cd BypassAV/
				mkdir maligno/
				cd /opt/BypassAV/maligno/
				wget https://www.encripto.no/tools/maligno-2.2.tar.gz
				tar -zxvf maligno-2.2.tar.gz
                                echo -e "\e[34m Congratulations!!, You've Successfully Installed maligno\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
	else
		echo -e "\e[31m maligno Is already Installed On This Machine. \e[0m"
	fi
}
# Install wig
function installwig {
	echo -e "\e[1;31m****** wig Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! wig Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/intelligence-gathering/WebApp/wig/
				git clone https://github.com/jekyc/wig.git /opt/intelligence-gathering/WebApp/wig/
                                echo -e "\e[34m Congratulations!!, You've Successfully Installed wig\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install Windows Exploit Suggester
function installwindowsexploitsuggester {
	echo -e "\e[1;31m****** Windows Exploit Suggester Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! Windows Exploit Suggester Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/vulnerability-analysis/Network/Windows-Exploit-Suggester/
				git clone https://github.com/GDSSecurity/Windows-Exploit-Suggester.git /opt/vulnerability-analysis/Network/Windows-Exploit-Suggester/
                                echo -e "\e[34m Congratulations!!, You've Successfully Installed Windows Exploit Suggester\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install shellcode_tools  
function installshellcodetools {
	echo -e "\e[1;31m******  shellcode_tools Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  shellcode_tools Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/exploitation/Network/shellcode_tools-master/
				git clone https://github.com/MarioVilas/shellcode_tools.git /opt/exploitation/Network/shellcode_tools-master/
                                 echo -e "\e[34m Congratulations!!, You've Successfully Installed  shellcode_tools\e[0m"
			else
                                
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install DAws
function installdaws {
	echo -e "\e[1;31m****** DAws Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! DAws Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/Maintaining-Access/Web-Backdoor/DAws-master/
				git clone https://github.com/dotcppfile/DAws.git /opt/Maintaining-Access/Web-Backdoor/DAws-master/
			      echo -e "\e[34m Congratulations!!, You've Successfully Installed DAws\e[0m"
                                else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install Serbot
function installserbot {
	echo -e "\e[1;31m******   Serbot Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! Serbot Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/Maintaining-Access/OS-Backdoor/Serbot-master/
				git clone https://github.com/dotcppfile/Serbot.git /opt/Maintaining-Access/OS-Backdoor/Serbot-master/
                                echo -e "\e[34m Congratulations!!, You've Successfully Installed Serbot\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install Pompem
function installpompem {
	echo -e "\e[1;31m****** Pompem Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! Pompem Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/exploitation/Pompem-master/
				git clone https://github.com/rfunix/Pompem.git /opt/exploitation/Pompem-master/
                               echo -e "\e[34m Congratulations!!, You've Successfully Installed Pompem\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install LaZagne
function installLazagne {
	echo -e "\e[1;31m****** LaZagne Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! LaZagne Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/Post-Exploitation/LaZagne-master/
				git clone https://github.com/AlessandroZ/LaZagne.git /opt/Post-Exploitation/LaZagne-master/
                                echo -e "\e[34m Congratulations!!, You've Successfully Installed LaZagne\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install Empire
function installempire {
	echo -e "\e[1;31m****** Empire Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! Empire Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/Post-Exploitation/Empire/
				git clone https://github.com/PowerShellEmpire/Empire.git /opt/Post-Exploitation/Empire/
                              echo -e "\e[34m Congratulations!!, You've Successfully Installed Empire\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install Linux Exploit Suggester
function installLinuxexploitsuggester {
	echo -e "\e[1;31m****** Linux Exploit Suggester Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! Linux Exploit Suggester Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/vulnerability-analysis/Network/Linux_Exploit_Suggester-master/
				git clone https://github.com/PenturaLabs/Linux_Exploit_Suggester.git /opt/vulnerability-analysis/Network/Linux_Exploit_Suggester-master/
                             echo -e "\e[34m Congratulations!!, You've Successfully Installed Linux Exploit Suggester\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install discover
function installdiscover {
	echo -e "\e[1;31m****** discover Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! discover Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/intelligence-gathering/Network/discover/
				git clone https://github.com/leebaird/discover.git /opt/intelligence-gathering/Network/discover/
                                   echo -e "\e[34m Congratulations!!, You've Successfully Installed discover\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install masscan
function installmasscan {
	echo -e "\e[1;31m****** masscan Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! masscan Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/intelligence-gathering/Network/masscan/
				git clone https://github.com/robertdavidgraham/masscan.git /opt/intelligence-gathering/Network/masscan/
				cd /opt/intelligence-gathering/Network/masscan/
				apt-get -y install git gcc make libpcap-dev
				make
				cd bin/
				cp masscan /usr/bin/
                                    echo -e "\e[34m Congratulations!!, You've Successfully Installed masscan\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install rawr
function installrawr {
	echo -e "\e[1;31m****** rawr Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! rawr Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/intelligence-gathering/WebApp/rawr/
				git clone https://bitbucket.org/al14s/rawr.git /opt/intelligence-gathering/WebApp/rarw/
				cd /opt/intelligence-gathering/WebApp/rawr/
				./install.sh y
                                 echo -e "\e[34m Congratulations!!, You've Successfully Installed rawr\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install seclist
function installseclist {
	echo -e "\e[1;31m****** seclist Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! seclist Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/intelligence-gathering/seclist/
				git clone https://github.com/danielmiessler/SecLists.git /opt/intelligence-gathering/seclist/
                               echo -e "\e[34m Congratulations!!, You've Successfully Installed seclist\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install golismero
function installgolismero {
	echo -e "\e[1;31m****** golismero Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! golismero Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/vulnerability-analysis/WebApp/golismero/
				git clone  /opt/vulnerability-analysis/WebApp/golismero/
				cd /opt/vulnerability-analysis/golismero/
				apt-get -y install python2.7 python2.7-dev python-pip python-docutils git perl nmap sslscan
				pip install -r requirements.txt
				pip install -r requirements_unix.txt
				ln -s /opt/vulnerability-analysis/WebApp/golismero/golismero.py /usr/bin/golismero
                            echo -e "\e[34m Congratulations!!, You've Successfully Installed golismero\e[0m"
			else

				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install owtf
function installowtf {
	echo -e "\e[1;31m****** owtf Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! owtf Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/vulnerability-analysis/WebApp/owtf/
				cd /opt/vulnerability-analysis/WebApp/
				wget https://raw.githubusercontent.com/owtf/bootstrap-script/master/bootstrap.sh
				chmod +x bootstrap.sh
				./bootstrap.sh
                               echo -e "\e[34m Congratulations!!, You've Successfully Installed owtf\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install zarp                   
function installzarp {
	echo -e "\e[1;31m****** zarp Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! zarp Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/exploitation/Network/zarp/
				git clone https://github.com/hatRiot/zarp.git /opt/exploitation/Network/zarp/
				cd /opt/exploitation/Network/zarp/
				pip install -r requirements.txt
                           echo -e "\e[34m Congratulations!!, You've Successfully Installed zarp\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install jsgifkeylogger 
function installjsgifkeylogger {
	echo -e "\e[1;31m******    jsgifkeylogger Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! jsgifkeylogger  Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/vulnerability-analysis/Javascript/jsgifkeylogger/
				git clone https://github.com/wopot/jsgifkeylogger.git /opt/vulnerability-analysis/Javascript/jsgifkeylogger/
                            echo -e "\e[34m Congratulations!!, You've Successfully Installed jsgifkeylogger \e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install brakeman                         
function installbrakeman {
	echo -e "\e[1;31m****** brakeman Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! brakeman Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/vulnerability-analysis/brakeman/
				git clone https://github.com/presidentbeef/brakeman.git /opt/vulnerability-analysis/brakeman/
				gem install brakeman
                            echo -e "\e[34m Congratulations!!, You've Successfully Installed brakeman\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install sleepy-puppy
function installsleepy-puppy {
	echo -e"\e[1;31m****** sleepy-puppy Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! sleepy-puppy Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/vulnerability-analysis/Javascript/sleepy-puppy/
				git clone https://github.com/stamparm/DSJS.git /opt/vulnerability-analysis/Javascript/sleepy-puppy/
                           echo -e "\e[34m Congratulations!!, You've Successfully Installed sleepy-puppy\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install DarkCometExploit 
function installDarkCometExploit {
	echo -e "\e[1;31m****** DarkCometExploit Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! DarkCometExploit  Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/Maintaining-Access/OS-Backdoor/DarkCometExploit/
				git clone https://github.com/wopot/jsgifkeylogger.git /opt/Maintaining-Access/OS-Backdoor/DarkCometExploit/
                          echo -e "\e[34m Congratulations!!, You've Successfully Installed DarkCometExploit \e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install fuzzdb
function installfuzzdb {
	echo -e "\e[1;31m****** fuzzdb Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! fuzzdb Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/intelligence-gathering/fuzzdb/
                         echo -e "\e[34m Congratulations!!, You've Successfully Installed fuzzdb\e[0m"
				git clone https://github.com/rustyrobot/fuzzdb.git /opt/intelligence-gathering/fuzzdb/
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install ZCR-Shellcoder 
function installZCR-Shellcoder {
	echo -e "\e[1;31m****** ZCR-Shellcoder Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! ZCR-Shellcoder Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/exploitation/Network/ZCR-Shellcoder/

				git clone https://github.com/Ali-Razmjoo/ZCR-Shellcoder.git /opt/exploitation/Network/ZCR-Shellcoder/
                           echo -e "\e[34m Congratulations!!, You've Successfully Installed ZCR-Shellcoder\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
#Install wpa-autopwn
function installwpa-autopwn {
	echo -e "\e[1;31m****** wpa-autopwn Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! wpa-autopwn Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/Wireless/wpa-autopwn/
				git clone https://github.com/vnik5287/wpa-autopwn.git /opt/Wireless/wpa-autopwn/
                              echo -e "\e[34m Congratulations!!, You've Successfully Installed wpa-autopwn\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install Crackq
function installCrackq {
	echo -e "\e[1;31m****** Crackq Installtion Wizard  ******\e[0m"
	echo -e "\e[1;31mAPI Key: c048070d8a60dfd454ea2847049b1e0700c4ed092a43a716ae8e0a08f0e3d444\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! Crackq Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/Password-Cracking/Crackq/
				git clone https://github.com/vnik5287/Crackq.git /opt/Password-Cracking/Crackq/
                              echo -e "\e[34m Congratulations!!, You've Successfully Installed Crackq\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install RIPS
function installRIPS {
	echo -e "\e[1;31m****** RIPS Installtion Wizard  ******\e[0m"
	echo -e "\e[1;31mOpen your browser at http://localhost/rips-xx/\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! RIPS Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /var/www/RIPS/
				git clone https://github.com/ripsscanner/rips.git /var/www/RIPS/
				cd /var/www/
				chmod R 777 RIPS/
				chmod R 775 RIPS/
                               echo -e "\e[34m Congratulations!!, You've Successfully Installed RIPS\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install imagejs
function installimagejs {
	echo -e "\e[1;31m****** imagejs Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"	
                     read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! imagejs Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/exploitation/WebApp/imagejs/
				git clone https://github.com/jklmnn/imagejs.git /opt/exploitation/WebApp/imagejs/
				cd /opt/exploitation/WebApp/imagejs/
				make
                           echo -e "\e[34m Congratulations!!, You've Successfully Installed imagejs\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install PyPhisher                                        
function installPyPhisher {
	echo -e "\e[1;31m****** PyPhisher Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!!  PyPhisher Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/exploitation/WebApp/PyPhisher/
				git clone https://github.com/sneakerhax/PyPhisher.git /opt/exploitation/WebApp/PyPhisher/
                             echo -e "\e[34m Congratulations!!, You've Successfully Installed PyPhisher\e[0m"
			else

				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install bettercap
function installbettercap {
	echo -e "\e[1;31m****** bettercap Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! bettercap Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/Sniffing-Spoofing/bettercap/
				git clone https://github.com/evilsocket/bettercap /opt/Sniffing-Spoofing/bettercap/
				apt-get install ruby-dev libpcap-dev
				cd /opt/Sniffing-Spoofing/bettercap/
				gem build bettercap.gemspec
				sudo gem install bettercap*.gem
                             echo -e "\e[34m Congratulations!!, You've Successfully Installed bettercap\e[0m"
			else

				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install Nosql-Exploitation-Framework
function installNosql-Exploitation-Framework {
	echo -e "\e[1;31m****** Nosql-Exploitation-Framework Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! Nosql-Exploitation-Framework Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/exploitation/WebApp/Nosql-Exploitation-Framework/
				git clone https://github.com/torque59/Nosql-Exploitation-Framework.git /opt/exploitation/WebApp/Nosql-Exploitation-Framework/
				cd /opt/exploitation/WebApp/Nosql-Exploitation-Framework/
				chmod a+x install.sh
				install.sh
                              echo -e "\e[34m Congratulations!!, You've Successfully Installed Nosql-Exploitation-Framework\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install PSRecon
function installpsrecon {
	echo -e "\e[1;31m****** PSRecon Installtion Wizard  ******\e[0m"
	echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! PSRecon Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/Post-Exploitation/PSRecon/
				git clone https://github.com/gfoss/PSRecon.git /opt/Post-Exploitation/PSRecon/
				cd /opt/exploitation/WebApp/Nosql-Exploitation-Framework/
                              echo -e "\e[34m Congratulations!!, You've Successfully Installed PSRecon\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install Hcon
function installhcon {
	echo -e "\e[1;31m****** Hcon Installtion Wizard  ******\e[0m"
        echo -e ""
	echo -"Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! Hcon Installation Started...  !!!!\e[0m"
				sleep 2
				/opt/exploitation/WebApp/Hcon/
				mkdir /opt/exploitation/WebApp/Hcon/
				wget http://sourceforge.net/projects/hconframework/files/HconFramework-Fire/HconSTF_0.5_Prime/HconSTF_v0.5_Linux_x86.tar.bz2
				mv HconSTF_v0.5_Linux_x86.tar.bz2 /opt/exploitation/WebApp/Hcon/
				cd /opt/exploitation/WebApp/Hcon/
				tar -xf HconSTF_v0.5_Linux_x86.tar.bz2
				chmod a+x /opt/exploitation/WebApp/Hcon/
				rm HconSTF_v0.5_Linux_x86.tar.bz2
                             echo -e "\e[34m Congratulations!!, You've Successfully Installed Hcon\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install Harness
function installharness {
	echo -e "\e[1;31m****** Harness Installtion Wizard  ******\e[0m"
        echo -e ""
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! Harness Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/exploitation/Network/Harness/
				git clone https://github.com/Rich5/Harness.git /opt/exploitation/Network/Harness/
				cd /opt/exploitation/Network/Harness/
				wget http://python.org/ftp/python/3.4.3/Python-3.4.3.tar.xz
				tar xf Python-3.4.3.tar.xz
				cd Python-3.4.3
				./configure --prefix=/usr/local --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib"
				make && make altinstall
				echo -e "\e[34m Congratulations!!, You've Successfully Installed Harness\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Install netripper 
function installnetripper {
	echo -e "\e[1;31m****** netripper Installtion Wizard  ******\e[0m"
	echo -e "Are You Sure You Wanna Install It? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\e[36m !!!! netripper Installation Started...  !!!!\e[0m"
				sleep 2
				rm -rf /opt/exploitation/Network/netripper/
				git clone git clone https://github.com/NytroRST/NetRipper.git /opt/exploitation/Network/netripper/
				cd /opt/exploitation/Network/netriper/Metasploit
				cp netripper.rb /usr/share/metasploit-framework/modules/post/windows/gather/netripper.rb
				mkdir /usr/share/metasploit-framework/modules/post/windows/gather/netripper
				g++ -Wall netripper.cpp -o netripper
				cp netripper /usr/share/metasploit-framework/modules/post/windows/gather/netripper/netripper
				cd ../Release/
				cp DLL.dll /usr/share/metasploit-framework/modules/post/windows/gather/netripper/DLL.dll
				echo -e "\e[34m Congratulations!!, You've Successfully Installed netripper\e[0m"
			else
				echo -e echo -e "\e[32m Thank You!! For Using Our Tool\e[m" 
                                echo -e "\33[31m{Checkout **MYSTRY BOX**}\33[0m"
			fi
}
# Hacking Tools
function hackingtools {
clear
echo -e "
\033[32m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\033[m
                           \033[94m     Hacking Tools    \033[m                                   
\033[32m%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\033[m"

select menusel in "Fluxion" "wig" "jsgifkeylogger" "Brakeman" "discover" "NetRipper" "Empire" "sleepy-puppy" "DarkCometExploit"  "imagejs"  "owtf"  "zarp"  "rawr"  "gcat"  "RIPS" "Windows Exploit Suggester" "Linux Exploit Suggester" "Veil-Framework" "Nosql-Exploitation-Framework"  "ZCR-Shellcoder"  "wpa-autopwn"  "mitmf" "bettercap"  "Shellter"  "golismero" "fuzzdb" "PSRecon"  "PyPhisher" "EyeWitness" "shellcode_tools" "Serbot" "LaZagne" "Crackq"  "DAws" "avoid" "commix" "Pompem" "maligno" "hcon"  "Harness" "seclist"  "masscan"  "Install All" "Back to Main"; do
case $menusel in 
	"Veil-Framework")
		installveil
		pause 
		hackingtools ;;

	"NetRipper")
		installnetripper
		pause 
		hackingtools ;;

	"Harness")
		installharness
		pause
		hackingtools ;;
	
	"hcon")
		installhcon
		pause
		hackingtools ;;


	"Emprise")
		installempire
		pause
		hackingtools ;;

	"PSRecon")
		installpsrecon
		pause
		hackingtools ;;

	"Nosql-Exploitation-Framework")
		installNosql-Exploitation-Framework
		pause
		hackingtools ;;

	"avoid")
		installavoid
		pause
		hackingtools ;;	

	"bettercap")
		installbettercap
		pause
		hackingtools ;;

	"PyPhisher")
		installPyPhisher
		pause
		hackingtools ;;

	"imagejs")
		installimagejs
		pause
		hackingtools ;;

	"owtf")
		installowtf
		pause
		hackingtools ;;


	"Brakeman")
		installbrakeman
		pause
		hackingtools ;;
		
	"Shellter")
		installshellter
		pause
		hackingtools ;;

	"mitmf")
		installmitmf
		pause 
		hackingtools ;;
				
	"commix")
		installcommix
		pause 
		hackingtools ;;
	
	"EyeWitness")
		installeyewitness
		pause
		hackingtools  ;;
		
	"gcat")
		installgcat
		pause
		hackingtools  ;;

	"maligno")
		installmaligno
		pause
		hackingtools  ;;
			
	"wig")
		installwig
		pause
		hackingtools ;;
		
	"Windows Exploit Suggester")
		installwindowsexploitsuggester
		pause
		hackingtools ;;

	"Linux Exploit Suggester")
		installLinuxexploitsuggester
		pause
		hackingtools ;;
		
	"shellcode_tools")
		installshellcodetools
		pause
		hackingtools ;;
		
	"DAws")
		installdaws
		pause
		hackingtools ;;
		
	"Serbot")
		installserbot
		pause
		hackingtools ;;
		
	"Pompem")
		installpompem
		pause
		hackingtools ;;
	"LaZagne")
		installLazagne
		pause
		hackingtools ;;
	"discover")
		installdiscover
		pause
		hackingtools ;;
	"masscan")
		installmasscan
		pause
		hackingtools ;;
	"rawr")
		installrawr
		pause
		hackingtools ;;

	"seclist")
		installseclist
		pause
		hackingtools ;;

	"golismero")
		installgolismero
		pause
		hackingtools ;;

	"zarp")
		installzarp
		pause
		hackingtools ;;

	"jsgifkeylogger")
		installjsgifkeylogger
		pause
		hackingtools ;;

	"DarkCometExploit")
		installDarkCometExploit
		pause
		hackingtools ;;

	"fuzzdb")
		installfuzzdb
		pause
		hackingtools ;;
	"ZCR-Shellcoder")
		installZCR-Shellcoder
		pause
		hackingtools ;;
	"wpa-autopwn")
		installwpa-autopwn
		pause
		hackingtools ;;
	"Crackq")
		installCrackq
		pause
		hackingtools ;;
	"RIPS")
		installRIPS
		pause
		hackingtools ;;
	"sleepy-puppy")
		installsleepy-puppy
		pause
		hackingtools ;;
	"Fluxion")
		installfluxion
		pause
		hackingtools ;;
		
	"Install All")
		installfluxion
		installveil
		installnetripper
		installshellter
		installmitmf
		installcommix
		installeyewitness
		installgcat
		installwig
		installbettercap
		installmetasploitframework
		installwindowsexploitsuggester
		installLinuxexploitsuggester
		installshellcodetools
		installdaws
		installserbot
		installpompem
		installLazagne
		installdiscover
		installmasscan
		installrawr
		installseclist
		installzarp
		installjsgifkeylogger
		installDarkCometExploit
		installfuzzdb
		installZCR-Shellcoder
		installwpa-autopwn
		installCrackq
		installRIPS
                installsleepy-puppy
		installimagejs
		installPyPhisher
		echo -e "\e[34m Congratulations!!, You've Successfully Installed All The Tools\e[0m"
		pause
		extras ;;
		

	"Back to Main")
		clear
		mainmenu ;;
		
	*)
		screwup
		extras ;;
	
		
esac

break

done
}
# pause function
function pause(){
   read -sn 1 -p "Press Any Key To CONTINUE...    {Checkout:Mystry Box}" 
}
########################################################
##                   Main Menu                        ##
########################################################
function mainmenu {
echo -e "
\033[40m 
██╗  ██╗ █████╗ ██████╗ ███████╗██╗  ██╗    ██╗   ██╗ █████╗ ██████╗ ██████╗ ██╗  ██╗ █████╗ ███╗   ██╗
██║  ██║██╔══██╗██╔══██╗██╔════╝██║  ██║    ██║   ██║██╔══██╗██╔══██╗██╔══██╗██║  ██║██╔══██╗████╗  ██║
███████║███████║██████╔╝███████╗███████║    ██║   ██║███████║██████╔╝██║  ██║███████║███████║██╔██╗ ██║
██╔══██║██╔══██║██╔══██╗╚════██║██╔══██║    ╚██╗ ██╔╝██╔══██║██╔══██╗██║  ██║██╔══██║██╔══██║██║╚██╗██║
██║  ██║██║  ██║██║  ██║███████║██║  ██║     ╚████╔╝ ██║  ██║██║  ██║██████╔╝██║  ██║██║  ██║██║ ╚████║
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝      ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝
                                                                                                       \033[m
\033[m                                  __________________¶¶¶¶¶
                                  ________________¶¶¶___¶¶¶
                                  ________________¶_______¶¶
                                  ____________¶¶¶¶_________¶¶¶¶¶¶¶¶¶
                                  _________¶¶¶¶¶¶¶¶_______¶¶_______¶¶¶
                                  _______¶¶________¶¶____¶¶__________¶¶
                                  _____¶¶¶__________¶¶__¶¶____________¶¶
                                  _____¶_____________¶__¶______________¶¶
                                  ____¶_______________¶_¶________¶¶¶¶¶__¶
                                  ___¶¶_¶¶¶¶¶_______¶¶¶¶¶¶¶______¶____¶¶_¶
                                  ___¶_¶¶___¶_____¶¶¶¶¶¶¶_¶¶¶____¶_____¶¶¶
                                  ___¶¶¶____¶¶____¶_________¶¶__¶¶______¶¶¶
                                  ___¶¶______¶___¶___________¶__¶________¶¶
                                  ___¶________¶¶_¶____________¶¶_________¶¶¶
                                  ___¶_________¶¶__¶¶¶___¶¶¶__¶_________¶¶¶¶¶
                                  __¶¶¶_________¶___¶¶___¶¶___¶_________¶¶¶¶¶
                                  _¶¶¶¶¶________¶_____________¶_________¶¶¶¶¶
                                  _¶¶¶¶¶________¶¶_¶________¶_¶__________¶¶¶
                                  _¶¶¶¶¶_________¶__¶¶¶¶¶¶¶¶_¶
                                  __¶¶¶__________¶¶__¶0000¶__¶
                                  _______________¶¶¶__¶¶¶¶__¶_¶
                                  _______________¶_¶¶__¶¶___¶_¶¶
                                  _______________¶___¶_____¶__¶¶
                                  _______________¶¶¶__¶¶¶¶_¶¶¶_¶
                                  _______________¶__¶¶¶¶¶¶¶¶___¶
                                  _______________¶____________¶¶¶¶¶
                                  ___________¶¶¶¶¶¶__________¶¶¶¶¶¶¶¶
                                  __________¶¶_¶¶¶¶¶¶______¶¶¶_¶_¶¶¶¶¶¶
                                  _________¶_¶¶¶¶__¶¶¶¶¶¶¶¶¶¶_¶¶¶___¶¶¶¶
                                  ________¶__¶_¶__¶_¶¶¶___¶¶¶__¶¶_¶__¶¶¶
                                  _______¶¶_¶_¶__¶__¶¶¶__¶¶¶¶¶___¶_¶__¶
                                  _______¶__¶_¶_¶__¶¶¶¶__¶¶_¶¶¶___¶_¶
                                  _______¶¶_¶¶__¶__¶¶¶¶_¶¶¶__¶¶¶__¶_¶
                                  ________¶¶¶_¶_¶_¶¶¶__¶¶¶¶¶_¶¶_¶__¶¶
                                  _________¶__¶¶__¶¶¶_¶¶¶¶¶¶__¶__¶
                                  _______________¶¶¶__¶¶¶¶_¶__¶¶_¶¶ \033[m
\033[36m        
                       
               **TRUE LEADERS DON'T CREATE FOLL0WERS, THERY CREATE MORE LEADERS**\033[m  \033[34m  -ANONYMOUS\033[m
\033[1;91m
              
            *##################################################################################*  
            *##                                                                              ##*
            *##                        HACKING & PENTESTING TOOLS                            ##*
            *##                                                                              ##*
            *##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++##* 
            *##                                                                              ##*
            *##                                                                              ##*
            *##    YOUTUBE CHANNEL : www.youtube.com/channel/UCBLokeZQq4tiBZu9GgeiNdQ        ##*
            *##                                                                              ##*
            *##                                                                              ##*
            *##                                                                              ##*
            *##            WEBSITE : www.crazyprogrammers.ga                                 ##*
            *##                                                                              ##*
            *##                                                                              ##*
            *##                                                                              ##*
            *##      FACEBOOK PAGE : www.facebook.com/crazyprogrammers12/                    ##*          
            *##                                                                              ##*
            *##                                                                              ##*
            *##       FACEBOOK ID  : www.facebook.com/profile.php?id=100011614270079         ##*
            *##                                                                              ##*
            *##################################################################################*
            ************************************************************************************                                       

\033[m                THIS SCRIPT IS DEVELOPED BY -\033[m \033[34m *HARSH VARDHAN* \033[m
              	                   \033[m Version :\033m \033[31m 1.0 \033[m 
                      Copyrights: \033[96m Harsh Vardhan (2016-2020)\033[m
\033[94m======================================================================================================================================\033[m"

select menusel in "Connection Info" "System Tools" "Hacking Tools"  "Update Kali" "Update Tools" "**MYSTRY BOX**" "QUIT"; do
case $menusel in
            "Connection Info")
                  echo -e "          \033[31mGATEWAY \033[m = $DEFAULT_ROUTE
         \033[31m INTERFACE \033[m = $IFACE
         \033[31m IP ADDRESS \033[m = $MYIP " 
                pause 
                clear ;;
	
	"Update Kali")
		updatekali
		clear ;;
	
	"System Tools")
		softwaresandystemtools
		clear ;;
        
	"Hacking Tools")
		hackingtools 
		clear ;;

	"Update Tools")
		updatetools
		clear ;;

	"**MYSTRY BOX**")
		firefox https://www.facebook.com/crazyprogrammers12/ 
                firefox http://www.facebook.com/profile.php?id=100011614270079
                firefox http://www.crazyprogrammers.ga
                firefox https://www.youtube.com/channel/UCBLokeZQq4tiBZu9GgeiNdQ 
		pause
		clear ;;
	
	"QUIT")
		clear && exit 0 ;;
		
	* )
		screwup
		clear ;;
esac

break

done
}

while true; do mainmenu; done 
