---
layout: default
parent: Guides - Misc
title: NoLoAD Setup
nav_order: 3
has_children: false
permalink: /guides/misc/noload-setup
---

# NoLoAD Environment Setup Guide

## Overview

This guide offers step-by-step instructions for configuring NoLoAD (NoMAD Login AD) on macOS, enabling users to log in with their Domain Accounts without binding the system directly to a specific Domain. NoLoAD provides a streamlined solution for seamless domain authentication on Mac devices.

{: .note }
NoLoAD is ideal for educational and enterprise settings where centralized user management is needed. It enables domain logins on Macs, which cannot fully join Active Directory domains like Windows devices.

## Prerequisites

- A Mac computer running macOS 10.12 (Sierra) or newer
- A working internet connection
- Access to the institution's network (either via WiFi or Ethernet connection)
- Basic familiarity with macOS (guide includes detailed screenshots for beginners)

{: .warning }
Some steps in this installation may require administrator privileges on the Mac. If you don't have admin access, please contact your fellow TAs for assistance.

## Installation Steps

### Step 0: Ensure the Device Can Connect to the Domain Controller

{: .important }  
Before installing NoLoAD, verify that your Mac can connect to the domain network. NoLoAD requires proper connectivity to function.

1. **Check Network Connection**
   - Ensure your Mac is connected to the **"IOT" WiFi** network or via **Ethernet (LAN)**.
   - To verify WiFi: Click the WiFi icon in the menu bar and confirm "IOT" is selected.
   - For Ethernet: Confirm the cable is securely connected to both the Mac and the network port.

2. **Verify Domain Controller Connectivity**
   - Open **Terminal** (Applications > Utilities > Terminal, or use ⌘+Space and search for "Terminal").
   - Run:
     ```bash
     ping techlab.apiit.edu.my
     ```
   - You should see replies. Press `Control+C` to stop.
   - Alternatively, test DNS with:
     ```bash
     nslookup techlab.apiit.edu.my
     ```

3. **If Domain Resolution Fails:**
   - Go to **System Preferences** (or **System Settings** in newer macOS versions)
   - Navigate to **Network**
   - Select your active interface (WiFi or Ethernet)
   - Click **Advanced...**, go to the **DNS** tab
   - Add the DNS server: `10.61.20.33`
   - Click **OK** > **Apply**

{: .warning }  
Incorrect DNS settings will prevent your Mac from locating the domain controller, causing NoLoAD setup to fail.

---

### Step 1: Download and Install NoLoAD

1. **Download the Installer**  
   [Download NoLoAD](https://files.nomad.menu/NoMAD-Login-AD.pkg) and save it (typically in the **Downloads** folder).

2. **Run the Installer**
   - Open **Finder**, go to **Downloads**, and double-click `NoMAD-Login-AD.pkg`.
   - If you see a security warning:
     - Right-click the file > **Open** > confirm with **Open**.
   - Follow the installation prompts:
     - Click **Continue** through the steps.
     - Choose your main drive and click **Install**.
     - Enter your admin password when prompted.

{: .note }  
Installation may take a few minutes. Avoid interrupting the process.

---

### Step 2: Install the Configuration Profile

1. **Download the Configuration File**  
   [Download `.mobileconfig` file](../../assets/NoLoAD/TL04-06_NoLoAD.mobileconfig)

2. **Install the Profile**
   - Locate the file in **Downloads** and double-click it.
   - System Preferences (or System Settings) will open to **Profiles**.
   - Click **Install**, authenticate if prompted, and confirm any warnings.

{: .warning }  
If installation doesn't start automatically, go to System Preferences > **Profiles** (or Settings > Privacy & Security > Profiles), click **+**, and add the downloaded file manually.

---

### Step 3: Set Up the Lockscreen Assets

1. **Download Assets**  
   [Download lockscreen ZIP](../../assets/NoLoAD/LoginScreen.zip)

2. **Extract the ZIP**
   - Double-click the file in **Downloads** to extract the `LoginScreen` folder.

3. **Copy Assets to System Folder**
   - Open **Terminal**, then run:
     ```bash
     sudo mkdir -p /Library/LoginScreen
     sudo cp -r ~/Downloads/LoginScreen/* /Library/LoginScreen/
     ```

4. **Set Correct Permissions**
   - In Terminal:
     ```bash
     sudo chmod -R 755 /Library/LoginScreen
     ```

   **Alternatively via Finder:**
   - Press ⌘+Shift+G in Finder, type `/Library`, and click **Go**.
   - Right-click `LoginScreen` > **Get Info**
   - Click the lock icon, enter your password, and set permissions to **Read & Write** for all users.
   - Click the gear icon > **Apply to enclosed items**

{: .important }  
Improper permissions may prevent the login screen from displaying correctly.

## Post Setup Steps

### Verify Installation

1. Save any open work and log out of your current user account:
   - Click the Apple menu (top left corner) and select "Log Out [Username]"
   - Or use the keyboard shortcut ⌘+Shift+Q

2. At the login screen, you should now see the customized NoLoAD login interface instead of the standard macOS login screen.

3. To test domain authentication:
   - Select "Other" if you don't see a list of domain users
   - Enter your domain username in the format `username@TECHLAB` or `TECHLAB\username`
   - Enter your domain password
   - Click the "Log In" button or press Return

{: .note-title }
> **Troubleshooting**
>
> If the custom login screen doesn't appear or domain authentication fails:
> - Restart your Mac to ensure all changes take effect
> - Verify your network connection and DNS settings
> - Check that the NoLoAD service is running by opening Terminal and typing: `sudo launchctl list | grep NoMAD`
> - If issues persist, you might need to reinstall the NoLoAD package or contact your IT support

---

## Uninstallation (If Needed)

If you need to uninstall NoLoAD for any reason:

1. Download the [uninstall script](../../assets/NoLoAD/Uninstall-NoLoAD.sh)
2. Open Terminal (Applications > Utilities > Terminal)
3. Navigate to where you downloaded the script:
   ```bash
   cd ~/Downloads
   ```
4. Make the script executable and run it:
   ```bash
   chmod +x Uninstall-NoLoAD.sh
   sudo ./Uninstall-NoLoAD.sh
   ```
5. Restart your Mac after the uninstallation completes

{: .warning }
Uninstalling NoLoAD will revert your Mac to the standard login system. Domain users may no longer be able to log in without additional configuration.