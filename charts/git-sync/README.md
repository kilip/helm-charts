# git-sync
A sidecar app which clones a git repo and keeps it in sync with the upstream.

This is a helm chart for [git-sync](https://github.com/kubernetes/git-sync)

## TL;DR;

```shell
$ helm repo add olympus https://charts.itstoni.com/
$ helm install olympus/git-sync
```

## Configuration

The following table lists the minimum required configuration parameters
of the **git-sync** chart and their default values.

| Parameter                   | Description                                                     | Default    |
|-----------------------------|-----------------------------------------------------------------|------------|
| `env.GIT_SYNC_REPO`         | the git repository to clone                                     | `required` |
| `env.GIT_SYNC_BRANCH`       | the git branch to check out                                     | `main`     |
| `env.GIT_SYNC_SUBMODULES`   | git submodule behavior: one of 'recursive', 'shallow', or 'off' | `off`      |
| `env.GIT_SYNC_HTTP_METRICS` | enable metrics on git-sync's HTTP endpoint                      | `true`     |
| `env.GIT_SYNC_WAIT`         | the number of seconds between syncs                             | `5`        |
| `args`                      | additional arguments to use on git-sync ommand                  |  `-v=3`    |
| `persistence.existing.claim`| an existing volume claim to use for git clone                   |   `nil`    |

Please visit to [git-sync project](https://github.com/kubernetes/git-sync/tree/release-3.x) for more environment and args settings.
