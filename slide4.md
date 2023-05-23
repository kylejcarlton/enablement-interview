layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide4

# Example Integration on AWS 

```bash
$ tmux new -s vault -d 'vault server -dev && $SHELL';
tmux attach -t vault;
```

```bash
$ export VAULT_TOKEN="hvs.mCJT********************";
export VAULT_ADDR='http://127.0.0.1:8200';
vault kv put secret/aws/access_credentials access_key=AKI***************** secret_key=vqv*************************************;
```


![Vault Logo](./assets/images/logo_vault_small.png)

???

Next start Vault in dev mode inside a tmux session, connect to it and collect the VAULT_ADDR and VAULT_TOKEN (Root Token). 

Use Ctrl+b to exit the tmux session and set the $VAULT_ADDR and $VAULT_TOKEN as environment variables. 

Finally use the vault kv put command to store the access_key and secret_key for AWS.

---
