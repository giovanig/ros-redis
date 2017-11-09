default: git

clean:
		find . -type f -name '*~' -delete

pull:
		git pull --all

push: 
		git add *
		git commit -m "Update install instructions. And using redis package to enhance functionality"
		git push origin redis	

git: clean push

