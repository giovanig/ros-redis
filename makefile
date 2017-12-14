default: git

clean:
		find . -type f -name '*~' -delete

pull:
		git pull --all

push: 
		git add . .gitignore
		git commit -m "Add all topics in the autonomy stack"
		git push origin master	

git: clean push

reset:
	git fetch --all
	git reset --hard origin/master

