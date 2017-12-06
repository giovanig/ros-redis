default: git

clean:
		find . -type f -name '*~' -delete

pull:
		git pull --all

push: 
		git add .
		git commit -m "Deployment scripts set for service"
		git push origin master	

git: clean push

reset:
	git fetch --all
	git reset --hard origin/master

