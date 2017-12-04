default: git

clean:
		find . -type f -name '*~' -delete

pull:
		git pull --all

push: 
		git add .
		git commit -m "Update node to publish rosmsg in json format"
		git push origin master	

git: clean push

reset:
	git fetch --all
	git reset --hard origin/master

