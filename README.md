<div align="center">

# asdf-atlassian-sdk [![Build](https://github.com/tarik02/asdf-atlassian-sdk/actions/workflows/build.yml/badge.svg)](https://github.com/tarik02/asdf-atlassian-sdk/actions/workflows/build.yml) [![Lint](https://github.com/tarik02/asdf-atlassian-sdk/actions/workflows/lint.yml/badge.svg)](https://github.com/tarik02/asdf-atlassian-sdk/actions/workflows/lint.yml)

[atlassian-sdk](https://github.com/tarik02/asdf-atlassian-sdk) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

**TODO: adapt this section**

- `bash`, `curl`, `tar`, and [POSIX utilities](https://pubs.opengroup.org/onlinepubs/9699919799/idx/utilities.html).
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add atlassian-sdk
# or
asdf plugin add atlassian-sdk https://github.com/tarik02/asdf-atlassian-sdk.git
```

atlassian-sdk:

```shell
# Show all installable versions
asdf list-all atlassian-sdk

# Install specific version
asdf install atlassian-sdk latest

# Set a version globally (on your ~/.tool-versions file)
asdf global atlassian-sdk latest

# Now atlassian-sdk commands are available
atlas-mvn --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/tarik02/asdf-atlassian-sdk/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [tarik02](https://github.com/tarik02/)
