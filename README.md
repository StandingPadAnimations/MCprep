# MCprep Kaion

## What is it?
A fork of MCprep that aims to bring new features faster, from both MCprep's dev branch and us

## What New Features?
We have three types of features, "Upstream Dev", Intended for Upstream", and "Kaion Quirks"

### Upstream Dev
Features implemented in the MCprep Dev branch

* Nothing, as of the latest Kaion release

### Intended for Upstream
These are features that are currently only in Kaion but are planned to be merged upstream

* Proper moon lamp with some fixes ([Pull Request made upstream](https://github.com/TheDuckCow/MCprep/pull/370))

### Kaion Quirks
Kaion exclusive features

* SimplePrep: Reduce the MCprep UI down to a couple of panels for those that don't want the extra features of MCprep (Decided upstream to be too niche)
* Signed Releases: All releases are signed with GPG and come with a signature that verify that releases have not been modified on Github (the public key is `7F6A0E6FA332BAD0EC9E76B383C7F596A88BE583`)

### Features from Kaion Merged Upstream
#### Added in MCprep 3.4.2
* [Emission Option for Prep Materials](https://github.com/TheDuckCow/MCprep/pull/369)
* [Inspecting OBJ to determine compatibility with texture swap and animate textures](https://github.com/TheDuckCow/MCprep/pull/372)
* [Using the new C++ OBJ importer in Blender 3.5 and above](https://github.com/TheDuckCow/MCprep/pull/382)
* [MTL conversion for non-standard colorspaces](https://github.com/TheDuckCow/MCprep/pull/383)

## Why?
For starters, MCprep doesn't recieve updates often. At most MCprep gets updated a couple of times a year. Each release has a massive amount of features, but also a lot of bugs. MCprep Kaion meanwhile will recieve at least one update every month, if not more. That means you'll get the latest and greatest in the world of MCprep, but it also benefits MCprep by allowing WIP features to go in the wild, where bugs can be discovered and fixed early. It's a win-win, less bugs when MCprep does recieve a new update and early access to new features for users.

## Why can't I just build from the MCprep dev branch?
You could, but you would lose features like meshswap since blend files aren't included in the git repo.

## How do the branches work?
For starters, the Kaion dev branch is meant to be identical to the MCprep dev branch. Bug fixes related to the dev branch go in the dev branch and eventually merged upstream. All new features in Kaion meanwhile get their own branches, based on the dev branch.

When a new Kaion release is made, all branches get merged to Kaion master, and given Kaion quirks like updater link, name change, version change, etc. Pull requests are also made upstream for the new features and changes.

When a feature does get accepted in MCprep, Kaion will simply follow what MCprep does. If that means changing functionality, so be it. The point of Kaion is to make MCprep itself better.

If a feature is denied and there are no plans to add it to MCprep, then it becomes part of Kaion master as a Kaion quirk, unless told otherwise upstream.

## How do I report issues?
Issues should be reported here. From here it'll be decided if the issue should be forwarded upstream or not.

## Should I make a pull request here or upstream?
While we accept pull requests, it's generally better to make them upstream unless they deal with Kaion specifically.
