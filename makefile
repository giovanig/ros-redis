default: git

clean:
		find . -type f -name '*~' -delete

pull:
		git pull --all

push: 
		git add *
		git commit -m "Update script locations in README according to skyline vehicle"
		git push origin redis	

git: clean push

