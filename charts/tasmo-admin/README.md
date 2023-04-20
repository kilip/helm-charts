# TasmoAdmin: an administrative platform for devices flashed with Tasmota

This is a helm chart for [TasmoAdmin](https://github.com/TasmoAdmin/TasmoAdmin)

## TL;DR;

```shell
$ helm repo add olympus https://charts.itstoni.com/
$ helm install olympus/tasmo-admin
```

## Installing the Chart

To install the chart with the release name `my-release`:

```console
helm install --name my-release olympus/tasmo-admin
```

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```console
helm delete my-release --purge
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

Read through the [values.yaml](https://github.com/kilip/helm-charts/blob/main/charts/tasmo-admin/values.yaml) file. It has several commented out suggested values.

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example,

```console
helm install --name my-release \
  --set persistence.userdata.existingClaim=tasmo-admin-userdata-pvc \
    olympus/tasmo-admin
```

Alternatively, a YAML file that specifies the values for the above parameters can be provided while installing the chart. For example,

```console
helm install --name my-release -f values.yaml olympus/tasmo-admin
```
