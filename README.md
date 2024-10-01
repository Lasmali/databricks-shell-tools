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

Set theme in `~/.zshrc`

```bash
ZSH_THEME="databricks-profile"
```

Install Databricks shell completions

```bash
mkdir -p ~/.oh-my-zsh/custom/completions
databricks completion zsh > ~/.oh-my-zsh/custom/completions/_databricks
```

### Usage

Select Databricks profile for current session

> Note: profile needs to be stored in `~/.databrickscfg` file

```bash
dps_profiles
```

Reset Databricks profile

```bash
dps_reset
```
