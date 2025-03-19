# nginx 

## Goals for this repo
1. use Hashicorp Vault Credentials
2. use new DNS module previously created 
3. use nginx https git 
4. what are best practices for vars and clean files 
https://github.com/SeattleDevs/letsencrypt-cloudflare-hook

#### Above was already started up 

## Next Steps 
1. vars.sh was updated to have TF_ENV, TF_ENV_KEY and BACKEND_STATE_KEY, ok?
2. if you really want "run.sh" to work; perhaps these can be updated by the script please?  Update that values in vars.sh.
3. want this to be built by addding root username and password (we have the code for this) ok please?
    - Please see I added a copy of "vault-list-secrets.sh" here
    - Do they need to be added; should we organize Vault different? 
    - Really want this to have it's own Proxmox Token (want to use this logic for all proxmox eventually) please?
    - what are the vault commands to a-read the username and password from vault and how to update that in vault 
4. each time it runs; a new Proxmox Token should be created and deleted on the destroy token please?
5. please add cloud-init section for apt update and other places (where should that be for best practices)
6. are we using terraform workspaces on this; should we?