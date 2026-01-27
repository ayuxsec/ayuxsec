default: push

.PHONY: push

push:
	git config user.name "ayuxsec"
	git config user.email "ayuxsec@proton.me"
	git checkout --orphan _temp
	git add -A
	git commit -m "notes"
	git branch -D main
	git branch -m main
	git push -f origin main
