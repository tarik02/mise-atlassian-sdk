# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

# TODO: adapt this
asdf plugin test atlassian-sdk https://github.com/tarik02/asdf-atlassian-sdk.git "atlas-mvn --version"
```

Tests are automatically run in GitHub Actions on push and PR.
