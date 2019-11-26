KUBE=kubectl -n=kafka

pull-secrets:
	gsutil rsync -R gs:// secrets/

apply-secrets:
	$(KUBE) create secret generic kafka-auth\
		--from-file=secrets/kafka-user\
		--from-file=secrets/kafka-password
