shellcheck:
	@echo "Running Shellcheck..."
	@docker run --rm -v "$(PWD)/keys:/mnt" koalaman/shellcheck:stable -Calways generate
	@echo "[OK] Shellcheck Completed!"

.PHONY: shellcheck
