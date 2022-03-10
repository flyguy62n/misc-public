# misc-public

Nothing too exciting.  just some public SSH keys and a few scripts.

# YubiKey Notes
[WSL2-SSH-PAGEANT](https://github.com/BlackReloaded/wsl2-ssh-pageant)
[Ultimate Guide to Yubikey on WSL2](https://dev.to/dzerycz/the-ultimate-guide-to-yubikey-on-wsl2-part-1-5aed)

1. Install Gpg4win
2. See bashrc-additions and gpg-agent.conf above.
3. gpg-agent.conf goes in %APPDATA%/gnupg directory.
4. Add gpg-agent to the shell:startup folder
5. PowerShell: Edit the card to fetch the public key and trust the key ultimately
  ```
  gpg --card-edit
  fetch
  quit


  gpg --edit-key <key_id>
  trust
  5
  ```
6. Edit ~/.bashrc with the contents in bashrc-additions
7. PowerShell: `wsl --shutdown`
8. Troubleshoot until you pull your hair out
9. Reboot and troubleshoot some more
10. Wait
11. Marvel in the awesomeness when it starts working and then never change anything ever again