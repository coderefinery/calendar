# yaml to ics calendar

This repository turns yaml files into icl calendars (importable into
different programs) using
[yaml2ics](https://github.com/scientific-python/yaml2ics) and GitHub
actions.  Most of the logic is in yaml2ics, this repository provides
the action to build + publish to Github Pages.

## Usage

In short,

- `calendars/*.yaml` contains the calendars.
- Install requirements in `yaml2ics/requirements.txt` (this is a
  submodule).
- They get built to `out/*.ics` via `make`
- An index `out/index.html` gets build via `make`
- The Github Actions workflow file pushes to the `gh-pages` branch.  Note: you
  have to go to settings and toggle pages off and on again the first
  time to make it live, after that Github Actions will keep it up to
  date.

For now, see `calendars/example.yaml` for an example.  This
documentation should be improved.

When setting this up, do not fork the upstream repository, because
then pull requests will end up here.  However, you might not want to
use the "template repository" feature, since then histories will
become disconnected, and you can't pull updates send PRs back to us.
So, manually make a new repository, add this as a remote, pull, then
push to your new repository as the upstream.



## Status

Alpha, it works but may require code changes still to get around
corner cases.



## See Also

* This directly uses https://github.com/scientific-python/yaml2ics
* yaml2ics uses https://github.com/ics-py/ics-py/
* Another (old, unmaintained) yaml-to-ics is
  https://github.com/priyeshpatel/yaml-to-ical
