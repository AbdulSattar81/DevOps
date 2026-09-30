# Helm Installation

Install Helm (the Kubernetes package manager) on an AWS EC2 Ubuntu instance.

## 1. Download the installer

```bash
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4
```

## 2. Make it executable

```bash
chmod 700 get_helm.sh
```

## 3. Run the installer

```bash
./get_helm.sh
```

## 4. Verify

```bash
helm version
```

## Optional: Install tree

Shows folder structure, useful for viewing Helm chart layouts.

```bash
sudo apt install -y tree
```
