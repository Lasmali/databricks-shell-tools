# Databricks-shell-tools

## Requirements

* [Databricks CLI](https://docs.databricks.com/en/dev-tools/cli/tutorial.html)
* [zsh](https://ohmyz.sh/)

## Installation

Copy plugin and themes to zsh

```bash
cp ./zsh/plugins/data-product/databricks.zsh ~/.oh-my-zsh/custom/plugins/data-product/databricks.zsh
cp ./zsh/themes/data-product.zsh-theme ~/.oh-my-zsh/custom/themes/data-product.zsh-theme
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
