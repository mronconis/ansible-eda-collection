
COLLECTION_NAMESPACE=mronconi
COLLECTION_NAME=ansible_eda
COLLECTION_VERSION=$(shell yq .version galaxy.yml)
COLLECTION_BUILD=$(COLLECTION_NAMESPACE)-$(COLLECTION_NAME)-$(COLLECTION_VERSION).tar.gz

build: $(COLLECTION_BUILD)

clean: 
	rm $(COLLECTION_BUILD)

$(COLLECTION_BUILD):
	ansible-galaxy collection build .

version:
	@echo $(COLLECTION_VERSION)
