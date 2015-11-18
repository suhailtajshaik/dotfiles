# Daniel’s dotfiles

## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/dotfiles`.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/vzdigitalmedia/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source bootstrap.sh
```

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used](https://github.com/mathiasbynens/dotfiles/blob/aff769fd75225d8f2e481185a71d5e05b76002dc/.aliases#L21-26)) takes place.

Here’s an example `~/.path` file that adds `~/utils` to the `$PATH`:

```bash
export PATH="$HOME/utils:$PATH"
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My `~/.extra` looks something like this:

```bash
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="FirstName LastName"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="user@mail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.extra` to override settings, functions and aliases from my dotfiles repository. It’s probably better to [fork this repository](https://github.com/mathiasbynens/dotfiles/fork) instead, though.


### Install Ruby formulae

When setting up a new Mac, you may want to install some common [Ruby](https://www.ruby-lang.org/en/) items.  I've found the best way to do this is with a Ruby Version Manager which will also install some necessities like Homebrew.

```bash
curl -sSL https://get.rvm.io | bash -s stable
source ~/.profile
rvm requirements
rvm install ruby-stable
rvm use ruby-2.2.1-stable
source ~/.bashrc
gem install bundle
```

### Install Homebrew formulae

If you installed Ruby via Ruby Version Manager you'll already have Homebrew.  If not then you may want to install along with some common [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of course):

> If you like you can install my base recomendations.

```bash
./brew.sh
```
> Along with my base application recommendations.

```bash
./brewcask.sh
```

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

### Node formulae

Normally I like to install node via brew, but I also like to ensure I can manage the version of Node I am running with a Node Version Manager.

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
nvm install stable
```

> As well if you desire you can install the base node global module recommmendations:

```bash
./nodemodules.sh
```

### Docker

Finally it is always good now to have access to docker.

```bash
docker-machine create --driver virtualbox dev
```
