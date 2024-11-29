FROM docker.io/library/almalinux:9

RUN dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-9-x86_64/pgdg-redhat-repo-latest.noarch.rpm
RUN dnf -qy module disable postgresql && dnf install -y pg_chameleon

ENTRYPOINT ["chameleon"]
