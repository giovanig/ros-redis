default: git

clean:
		find . -type f -name '*~' -delete

pull:
		git pull --all

push: 
		git add . .gitignore
		git commit -m "Updated NaN to 'NaN' and updated the autonomy_status status value to include quotes"
		git push origin master	

git: clean push

reset:
	git fetch --all
	git reset --hard origin/master

