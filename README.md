# Generate Prestashop Module Archive


## Usage

`gma <module name> <tag|branch>`

Example:

`gma generate-psmodule-archive master`

## Installation

`mkdir ~/scripts; cd ~/scripts; git clone https://github.com/madef/generate-psmodule-archive.git; echo "alias gma='~/scripts/generate-psmodule-archive/generate-psmodule-archive.sh'" >> ~/.bashrc; echo "alias gma='~/scripts/generate-psmodule-archive/generate-psmodule-archive.sh'" >> ~/.zshrc`

After that, don't forget to source your rc file:

`source ~/.bashrc`

or:

`source ~/.zshrc`

## Environment vars


By default the archive is generated on the current directory.
To generate all archives on a specific directory define the env var GMA_REPO :

```
  GMA_REPO=/home/madef/Workspace/ps/repo
  export GMA_REPO
```
