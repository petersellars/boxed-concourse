include .env 

shellcheck:
	@echo "Running Shellcheck..."
	
	@docker run --rm -v "$(PWD):/mnt:ro" -w /mnt \
		--entrypoint /bin/shellcheck \
		koalaman/shellcheck-alpine:$(SHELLCHECK_CONTAINER_VERSION) \
		-Calways \
		boxed

	@docker run --rm -v "$(PWD)/keys:/mnt:ro" -w /mnt \
		--entrypoint /bin/shellcheck \
		koalaman/shellcheck-alpine:$(SHELLCHECK_CONTAINER_VERSION) \
		-Calways \
		generate

	@docker run --rm -v "$(PWD)/utils:/mnt:ro" -w /mnt \
		--entrypoint /bin/shellcheck \
		koalaman/shellcheck-alpine:$(SHELLCHECK_CONTAINER_VERSION) \
		-Calways \
		container_versions

	@echo "[OK] Shellcheck Completed!"

.PHONY: shellcheck