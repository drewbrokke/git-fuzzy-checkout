# git-fuzzy-checkout

## How to Install

```sh
git clone git@github.com:drewbrokke/git-fuzzy-checkout.git
cd git-fuzzy-checkout
make install
```

## How to Uninstall

In the same repo directory, run:

```sh
make uninstall
```

## Usage
```
git fuzzy-checkout

Check out branches quickly with the power of \`fzf\`.
Default view is local branches (HEADS).

Usage:
    git fuzzy-checkout [OPTIONS] <QUERY>


OPTIONS:
    -a : Show branches from heads and remotes
    -r : Show branches from remotes
    -t : Show branches from tags

    -h : Show help

QUERY:
    An optional query to immediately filter the ref list.
    This is passed to \`fzf\` as the initial query, and can be changed.

Examples
    git fuzzy-checkout             # Show branches from heads (local)

    git fuzzy-checkout LPS-12345   # Show branches that match the query 'LPS-12345':

    git fuzzy-checkout -r          # Show branches from remotes

    git fuzzy-checkout -a          # Show branches from heads and remotes

    git fuzzy-checkout -t          # Show branches from tags
```