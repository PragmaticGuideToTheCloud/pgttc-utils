SELF := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

export

.PHONY: all \
        install

.PHONY: cloudsdk \
        kubernetes \
        terraform

all: install

install: cloudsdk kubernetes terraform

cloudsdk:
	make -f $(SELF)/Makefile.CLOUDSDK

kubernetes:
	make -f $(SELF)/Makefile.KUBERNETES

terraform:
	make -f $(SELF)/Makefile.TERRAFORM
