<div align="center">

# mise-atlassian-sdk [![Build](https://github.com/tarik02/mise-atlassian-sdk/actions/workflows/build.yml/badge.svg)](https://github.com/tarik02/mise-atlassian-sdk/actions/workflows/build.yml) [![Lint](https://github.com/tarik02/mise-atlassian-sdk/actions/workflows/lint.yml/badge.svg)](https://github.com/tarik02/mise-atlassian-sdk/actions/workflows/lint.yml)

[atlassian-sdk](https://github.com/tarik02/mise-atlassian-sdk) plugin for the [mise version manager](https://github.com/jdx/mise).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`, and [POSIX utilities](https://pubs.opengroup.org/onlinepubs/9699919799/idx/utilities.html).
- [jq](https://jqlang.github.io/jq/)

# Install

Plugin:

```shell
mise plugin add atlassian-sdk https://github.com/tarik02/mise-atlassian-sdk.git
```

atlassian-sdk:

```shell
# Show all installable versions
mise ls-remote atlassian-sdk

# Install specific version
mise install atlassian-sdk@latest

# Set a version globally (on your ~/.tool-versions file)
mise global atlassian-sdk@latest

# Now atlassian-sdk commands are available
atlas-version
```

Check [mise](https://github.com/jdx/mise) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/tarik02/mise-atlassian-sdk/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [tarik02](https://github.com/tarik02/)
