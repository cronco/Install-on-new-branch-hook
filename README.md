# NPM Install on switching to new branch

Simple bash script to run npm install on switching between two git branches.

This only triggers if package.json is different between the branch you were on and the one you checked out.

# Install
You can copy paste the content of the shell script directly to your git/hooks//post-checkout

```sh
cd install-on-new-branch-hook
cp install_if_diff_package_json.sh $your_repo/git/hooks/post-checkout
chmod +x $your_repo/git/hooks/post-checkout
```
