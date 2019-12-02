export BASH_SILENCE_DEPRECATION_WARNING=1

YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[1;36m'
GREEN='\033[0;32m'
PURP='\033[1;35m'

NC='\033[0m' # No Color

echo -e "\n\nWelcome back!🎉\nShow bash profile using '${YELLOW}?${NC}' \n\n"

# Bash
alias bashopen='open ~/.bash_profile' 
bashupdate(){
	source ~/.bash_profile
	clear
	cd
	echo -e "${GREEN}🔥 Bash profile has been updated! 🔥${NC}\n"
}
?(){	
	echo -e "\n${GREEN}CDs 💿"
	echo -e "\t${CYAN}cdcsf -> ${NC}cd into 'CS Files Folder." 	
	echo -e "\t${CYAN}cdcsc -> ${NC}cd into 'a CS class Folder'." 	

	echo -e "\n${GREEN}Websites 🖥"
	echo -e "\t${CYAN}blackboard -> ${NC}Launch Blackboard.com." 	
	echo -e "\t${CYAN}GitHub -> ${NC}Launch GitHub.com'." 	


	echo -e "${GREEN}\nReact ⚛️\n\t${CYAN}cdreact -> ${NC}cd into 'React Files'.'"
	echo -e "\t${CYAN}cdreactu -> ${NC}cd into 'React Udemy'." 	
	echo -e "\t${CYAN}newreact -> ${NC}create new react project and run it it in VS code." 
	echo -e "\n${GREEN}Bash 🎛"
	echo -e "\t${CYAN}bashupdate -> ${NC}update bash_profile"
	echo -e "\t${CYAN}bashupopen -> ${NC}open bash_profile${NC}" 	
	echo -e "\t${CYAN}rd -> ${NC}remove directory${NC}" 	

 	
}
rd(){
	echo -e "Remove: "
	read directory
	rm -r $directory
	echo -e "${GREEN}Removed $directory directory.\n${NC}"
}

# CSFiles
alias cdcsf='cd /Users/Jacob/Philes/SchoolFiles/CSFiles'
cdcsc(){
	echo -e "Please specify the CS class: "
	read classname
	echo -e "Opening folder for CS-$classname..."
	cd /Users/Jacob/Philes/SchoolFiles/CSFiles/$classname
	echo -e "\n${PURP}FOLDERS INSIDE ${YELLOW}CS-$classname${PURP} DIRECTORY${NC}\n"
	ls
}
 

# React 
cdreact(){
	cd /Users/Jacob/Philes/DevFiles/ReactFiles
	echo -e "\n${PURP}FOLDERS INSIDE ${YELLOW}REACT FILES 🗄 ${PURP} DIRECTORY${NC}\n"
	ls
}
cdreactu(){
	cd /Users/Jacob/Philes/DevFiles/ReactFiles/React-Udemy
	echo -e "\n${PURP}FOLDERS INSIDE ${CYAN}REACT UDEMY ✏️  ${PURP}DIRECTORY${NC}\n"
	ls
}
newreact(){
	echo -e "\n${GREEN}When creating a new react project,\nuse 'lowercase_title' as the naming convension${NC}"
#Prompt User
	echo -e "Please name your project: "
	read projectname	
#Create React Project
	npx create-react-app react_$projectname
	cd react_$projectname
	code .	
#Compile and run
	npm start
}



# Websites
alias blackboard='python -mwebbrowser https://uic.blackboard.com/'
alias github='python -mwebbrowser https://github.com/jacobdiaz/'



