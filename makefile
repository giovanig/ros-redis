default: git

clean:
		find . -type f -name '*~' -delete

pull:
		git pull --all

push: 
		git add .
		git commit -m "Added publishers to brake throttle steering gear report"
		git push origin master	

git: clean push

reset:
	git fetch --all
	git reset --hard origin/master

