# OpenHab: Empowering The Smart Home

This is a helm chart for [openhab](https://www.openhab.org/)

## TL;DR;

```shell
$ helm repo add olympus https://charts.itstoni.com/
$ helm install olympus/openhab
```

## Installing the Chart

To install the chart with the release name `my-release`:

```console
helm install --name my-release olympus/openhab
```

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```console
helm delete my-release --purge
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

Read through the [values.yaml](https://github.com/kilip/helm-charts/blob/main/charts/openhab/values.yaml) file. It has several commented out suggested values.

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example,

```console
helm install --name my-release \
  --set persistence.userdata.existingClaim=openhab-userdata-pvc \
    olympus/openhab
```

Alternatively, a YAML file that specifies the values for the above parameters can be provided while installing the chart. For example,

```console
helm install --name my-release -f values.yaml olympus/openhab
```
