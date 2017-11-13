default: git

clean:
		find . -type f -name '*~' -delete

pull:
		git pull --all

push: 
		git add *
		git commit -m "Update git makefile"
		git push origin redis	

git: clean push

reset:
	git fetch --all
	git reset --hard origin/redis

