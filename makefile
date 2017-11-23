default: git

clean:
		find . -type f -name '*~' -delete

pull:
		git pull --all

push: 
		git add .
		git commit -m "Remove py module from package and install pip2 module on machine"
		git push origin master	

git: clean push

reset:
	git fetch --all
	git reset --hard origin/master

