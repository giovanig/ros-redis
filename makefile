default: git

clean:
		find . -type f -name '*~' -delete

pull:
		git pull --all

push: 
		git add . .gitignore
		git commit -m "Updated p1hc_fault_detector package README"
		git push origin master	

git: clean push

reset:
	git fetch --all
	git reset --hard origin/master

