default: git

clean:
		find . -type f -name '*~' -delete

pull:
		git pull --all

push: 
		git add *
			git commit -m "First Draft: Listens to control commands and sends to redis"
				git push origin sim	

git: clean push

