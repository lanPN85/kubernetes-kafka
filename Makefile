KUBE=kubectl -n=kafka

default:

pull-secrets:
	gsutil rsync -R gs://vdsense-bucket1/secrets/kafka ./secrets

secrets:
	kubectl apply -k secrets/

kafka:
	kubectl apply -k kafka/

.PHONY: kafka pull-secrets secrets
