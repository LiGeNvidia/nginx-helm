
update-index:
	helm package nginx
	mv nginx-0.1.0.tgz nginx/
	helm repo index nginx/ --url https://ligenvidia.github.io/nginx-helm/

publish: update-index
	git commit -a -m "change index"
	git push origin HEAD
