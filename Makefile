
update-index:
	helm package nginx
	helm repo index . --url https://ligenvidia.github.io/nginx-helm/

publish: update-index
	git commit -a -m "change index"
	git push origin HEAD
