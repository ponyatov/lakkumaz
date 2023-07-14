CWD = $(CURDIR)
BIN = $(CWD)/bin

PY  = $(BIN)/python3
PIP = $(BIN)/pip3

.PHONY: install update
install update: $(PY)
	$(PIP) install pip autopep8 pytest
	$(PIP) install -U -r requirements.txt

$(PY):
	python3 -m venv .
