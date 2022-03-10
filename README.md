# misc-public

Nothing too exciting.  just some public SSH keys and a few scripts.

# YubiKey for WSL, VSCode and Git Notes
## Helpful Guides
[WSL2-SSH-PAGEANT](https://github.com/BlackReloaded/wsl2-ssh-pageant)

[Ultimate Guide to Yubikey on WSL2](https://dev.to/dzerycz/the-ultimate-guide-to-yubikey-on-wsl2-part-1-5aed)

[SSH Authentication using YubiKey on Windows](https://developers.yubico.com/PGP/SSH_authentication/Windows.html)

## Rough Steps
| Num  | Where | What |
| ---- | --------- | ---------------------------------------------------------------------------------------|
| 1.   |             | See `bashrc-additions` and `gpg-agent.conf` above.                                   |
| 2.   | `Windows`   |    Install Gpg4win and Putty                                                         |
| 3.   | `Windows`   | `gpg-agent.conf` goes in `%APPDATA%\Roaming\gnupg` directory.                        |
| 4.   | `Windows`   | Update Windows 10 environment variables:  `GIT_SSH=C:\Program Files\PuTTY\plink.exe` |
| 5.   | `Windows`   | Add `gpg-agent` to the `shell:startup` folder                                        |
| 6.   | `PowerShell`| Edit the card to fetch the public key and trust the key ultimately                   |
|      |             |  ```                                                                                 |
|      |             |  gpg --card-edit                                                                     |
|      |             |  fetch                                                                               |
|      |             |  quit                                                                                |
|      |             |                                                                                      |
|      |             |                                                                                      |
|      |             |  gpg --edit-key <key_id>                                                             |
|      |             |  trust                                                                               |
|      |             |  5                                                                                   |
|      |             |  ```                                                                                 |
| 7.   | `PowerShell`| Run `plink git@github.com`                                                           | 
| 8.   | `WSL`       | Edit `~/.bashrc` with the contents in bashrc-additions                               |
| 9.   | `PowerShell`| Run `wsl --shutdown`                                                                 |

## Rejoice
YubiKey should now be working for VSCode, GitHub, WSL and GPG -- in All the Things