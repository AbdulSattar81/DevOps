# Helm

## What is Helm?

Helm is a package manager for Kubernetes.
Just like `apt` installs packages on Ubuntu, `yum` on RedHat, or `npm` installs packages for Node.js, Helm installs applications on a Kubernetes cluster.

Instead of writing and applying many separate YAML files (Deployment, Service, ConfigMap, Secret, Ingress...), Helm bundles all of them into one package called a **Chart**. You install that chart with a single command.

## Why is Helm used?

- **One command instead of many** - deploy a whole application with `helm install` instead of many `kubectl apply -f` commands.
- **Reusable templates** - the same chart works for dev, staging and production; only the values change.
- **Easy configuration** - all settings live in one `values.yaml` file, so you don't edit YAML in many places.
- **Versioning and rollback** - every install or upgrade creates a new revision, so `helm rollback` takes you back to the last working version.
- **Ready-made charts** - public repositories (Bitnami, Artifact Hub, etc.) already provide charts for Nginx, MySQL, Prometheus, Grafana and more.
- **Clean uninstall** - `helm uninstall` removes every object the chart created, nothing is left behind.
- **Good for CI/CD** - a single command in a pipeline can deploy or upgrade the whole application.

## Important terms

| Term | Meaning |
| --- | --- |
| **Chart** | The Helm package - a folder of Kubernetes template files. |
| **Values** | The configuration (`values.yaml`) that fills the templates. |
| **Release** | One installed instance of a chart in the cluster. |
| **Repository** | A place where charts are stored and shared. |
| **Revision** | The version number of a release, used for rollback. |

## Chart structure

```
mychart/
  Chart.yaml      # name, version and description of the chart
  values.yaml     # default configuration values
  templates/      # Kubernetes YAML templates (deployment, service, ingress...)
  charts/         # dependency charts
  README.md       # documentation of the chart
```

## How Helm works

1. You write or download a chart (templates + values).
2. Helm merges the templates with the values and produces the final Kubernetes YAML.
3. Helm sends that YAML to the Kubernetes API server.
4. Helm stores the result as a **release** with a revision number, so it can be upgraded or rolled back later.

## Common commands

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm search repo nginx

helm install myapp bitnami/nginx
helm list
helm upgrade myapp bitnami/nginx --set replicaCount=3
helm rollback myapp 1
helm uninstall myapp

helm create mychart      # create your own chart
helm lint mychart        # check the chart for errors
helm template mychart    # see the final YAML without installing
```

## In short

Kubernetes runs the application, and Helm packages, configures and versions the Kubernetes files - so the same application can be installed anywhere with one command.
