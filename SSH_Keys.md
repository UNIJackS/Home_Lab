# Linux SSH Keys

## Generating key

https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server

## Enforcing key
- Open the config for OpenSSH
```
sudo nano /etc/ssh/sshd_config
```

- ensure that password-based is set to no
```
PasswordAuthentication no
```
```
ChallengeResponseAuthentication no
```
- Make sure no other configs are overriding the settings
```
/etc/ssh/sshd_config.d/
```
