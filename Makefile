start:
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -config cert.cnf -keyout ./tls.key -out ./tls.crt && podman build -f Dockerfile --target "prod" . -t "cardconjurer-client" && podman run --name cardconjurer -dit -h 127.0.0.1 -p 4242:4242 "cardconjurer-client" && rm -f tls.key tls.crt
