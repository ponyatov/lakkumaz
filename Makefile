MODULE = $(notdir $(CURDIR))

CWD = $(CURDIR)
BIN = $(CWD)/bin

PY  = $(BIN)/python3
PIP = $(BIN)/pip3

.PHONY: web
web: $(PY) $(MODULE).py
	$^

.PHONY: install update
install update: $(PY)
	$(PIP) install -U    pip autopep8 pytest
	$(PIP) install -U -r requirements.txt

$(PY):
	python3 -m venv .

# merge

MERGE += Makefile README.md requirements.txt .gitignore
MERGE += digiev $(MODULE).py static templates

dev:
	git checkout $@
	git checkout shadow -- $(MERGE)

shadow:
	git checkout $@
