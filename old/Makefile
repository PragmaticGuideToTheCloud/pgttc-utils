SELF := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

export

.PHONY: all \
        install

.PHONY: ansible \
        cloudsdk \
        kubernetes \
        terraform

all: install

install: ansible cloudsdk kubernetes terraform

ansible:
	make -f $(SELF)/Makefile.ANSIBLE

cloudsdk:
	make -f $(SELF)/Makefile.CLOUDSDK

kubernetes:
	make -f $(SELF)/Makefile.KUBERNETES

terraform:
	make -f $(SELF)/Makefile.TERRAFORM
