default:
	@echo "please choose a make target..."

update:
	./utils/update-from-upstream

certs:
	# etcd
	./utils/certify-me ca api jobs/etcd/templates/tls/ca
	# control
	./utils/certify-me ca   - jobs/control/templates/tls/ca
	# kubelet
	./utils/certify-me ca api jobs/kubelet/templates/tls/ca
	# jumpbox
	./utils/certify-me ca api jobs/jumpbox/templates/tls/ca
