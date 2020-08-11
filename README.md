# ShellCheck for CI

[ShellCheck] [Docker] image for CI that automatically finds scripts to check.

[ShellCheck]: https://www.shellcheck.net
[Docker]: https://www.docker.com

## Usage

### Shell

```sh
docker run --rm -tv "$(pwd):/source:ro" inviz/shellcheck
```

### Make

```makefile
.PHONY: shellcheck
shellcheck:
	docker run --rm -tv "$(CURDIR):/source:ro" inviz/shellcheck
```

### GitLab CI

```yaml
lint-shellcheck:
  stage: lint
  image:
    name: inviz/shellcheck
    entrypoint: ["sh", "-c"]
  script:
    - shellcheck-ci
```

## Copyright

Copyright © 2019–2020 [Arthur Khashaev]. See [license] for details.

[Arthur Khashaev]: https://khashaev.ru
[license]: LICENSE.txt
