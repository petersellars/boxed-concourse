include .env 

shellcheck:
	@echo "Running Shellcheck..."
	@docker run --rm -v "$(PWD)/keys:/mnt:ro" -w /mnt --entrypoint /bin/shellcheck koalaman/shellcheck-alpine:$(SHELLCHECK_CONTAINER_VERSION) -Calways generate
	@echo "[OK] Shellcheck Completed!"

.PHONY: shellcheck
