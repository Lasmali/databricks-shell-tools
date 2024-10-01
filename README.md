# Databricks-shell-tools

## Requirements

* [Databricks CLI](https://docs.databricks.com/en/dev-tools/cli/tutorial.html)
* [zsh](https://ohmyz.sh/)

## Installation

Copy plugin and themes to zsh

```bash
mkdir -p ~/.oh-my-zsh/custom/plugins/databricks-profile
cp ./zsh/plugins/databricks-profile/databricks.zsh ~/.oh-my-zsh/custom/plugins/databricks-profile/databricks.zsh
cp ./zsh/themes/databricks-profile.zsh-theme ~/.oh-my-zsh/custom/themes/databricks-profile.zsh-theme
```

Add plugin in `~/.zshrc`

```bash
plugins=(... databricks-profile)
```

Install databricks shell completions

```bash
mkdir -p ~/.oh-my-zsh/custom/completions
databricks completion zsh > ~/.oh-my-zsh/custom/completions/_databricks
```

### Usage

Set databricks profile for current session

> Note: profile needs to be stored in `~/.databrickscfg` file

```bash
export DATABRICKS_CONFIG_PROFILE=my_profile
```
