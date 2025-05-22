---
layout: default
parent: Mac
title: Installation guideline for Windows 11 via UTM (macOS - M series)
nav_order: 3
has_children: false
permalink: /guides/misc/utm-setup
description: Guide to install Windows 11 on macOS with Apple Silicon chips using UTM
---

{: .wip-badge }
> This guide is still being developed and is not yet complete.

# Installation guideline for Windows 11 via UTM (macOS - M series)

This guide is meant to be a continuation for the [Installation guideline for for UTM (macOS - M Series)](https://apiit.atlassian.net/wiki/spaces/ITSM/pages/2540175384/Installation+guideline+for+UTM+macOS+-+M+series).

## Contents
{: .no_toc }

1. TOC
{:toc}

# Download Windows 11 ISO

## Download CrystalFetch

As stated on the [UTM Guide for Windows 11](https://docs.getutm.app/guides/windows/):

{: .note }
> The easiest way to obtain a Windows installer ISO is with CrystalFetch on macOS, a free utility for legally obtaining the newest Windows builds from Microsoft.

**CrystalFetch** is a MacOS app that you can use to download Windows Installer ISOs.

**Step 1**: Open the [link](https://github.com/TuringSoftware/CrystalFetch/releases/latest/download/CrystalFetch.dmg) to download CrystalFetch.

**Result**: CrystalFetch will be Downloaded.

{% include image.html file="/assets/UTM/1.png" alt="CrystalFetch download" caption="CrystalFetch download process" %}

## Install CrystalFetch

**Step 1**: Double click on the **CrystalFetch.dmg**.

{% include image.html file="/assets/UTM/2.png" alt="CrystalFetch DMG file" caption="Double-click the CrystalFetch DMG file" %}

**Step 2**: **Right click and Copy** the **CrystalFetch** App.

{% include image.html file="/assets/UTM/3.png" alt="Copy CrystalFetch app" caption="Right-click and copy the CrystalFetch app" %}

**Step 3**: Open the **Applications** folder from the Side menu.

{% include image.html file="/assets/UTM/4.png" alt="Access Applications folder" caption="Open the Applications folder from the sidebar" %}

**Step 4**: Paste in to the Folder

{% include image.html file="/assets/UTM/5.png" alt="Paste CrystalFetch to Applications" caption="Paste CrystalFetch into the Applications folder" %}

**Result**: **CrystalFetch** has been installed successfully.

{% include image.html file="/assets/UTM/6.png" alt="CrystalFetch installation complete" caption="CrystalFetch successfully installed" %}

## Use CrystalFetch to download the ISO

**Step 1**: Run the **CrystalFetch** app from Launchpad.

**Step 1.1**: Open Launchpad by clicking the following icon from the Dock.

{% include image.html file="/assets/UTM/7.png" alt="Launchpad icon in Dock" caption="Launchpad icon in the macOS Dock" %}

**Step 1.2**: Click on the CrystalFetch Icon to open it.

{% include image.html file="/assets/UTM/8.png" alt="CrystalFetch icon in Launchpad" caption="CrystalFetch icon in Launchpad" %}

**Step 1.3**: Click **Open**

{% include image.html file="/assets/UTM/9.png" alt="CrystalFetch security dialog" caption="Click Open on the security dialog" %}

**Step 2**: Set the Proper settings and click **Download**.

{: .important }
> **Version**: Windows 11
> **Build**: Latest
> **Architecture**: Apple Silicon
> **Language**: *Your preferred language (For this guide we used "English (United States)")*
> **Edition**: Windows 11

{% include image.html file="/assets/UTM/10.png" alt="Set the proper config" caption="Set the proper config" %}

**Step 3**: Click **Accept** and wait for it to finish downloading.

<div class="d-flex">
  {% include image.html file="/assets/UTM/11.png" alt="Accept Microsoft terms" caption="Accept Microsoft terms" class="mr-2" %}
  {% include image.html file="/assets/UTM/12.png" alt="Download progress" caption="Download progress" %}
</div>

**Step 4**: Save the downloaded ISO file your desired folder.

{% include image.html file="/assets/UTM/13.png" alt="Save ISO file dialog" caption="Save the ISO file to your desired location" %}

# Set up the Virtual Machine

Now that you have downloaded the ISO file, we will go ahead and Set up and Boot up the Virtual machine.

**Step 1**: Run UTM app if not already open.

**Step 1.1**: Open Launchpad by clicking the following icon from the Dock.

{% include image.html file="/assets/UTM/7.png" alt="Launchpad icon in Dock" caption="Launchpad icon in the macOS Dock" %}

**Step 1.2**: Click on the UTM Icon to open it.

{% include image.html file="/assets/UTM/14.png" alt="UTM icon in Launchpad" caption="UTM icon in Launchpad" %}

**Step 2**: Press the + icon to create a new Virtual Machine

{% include image.html file="/assets/UTM/15.png" alt="UTM create new VM" caption="Click the + icon to create a new Virtual Machine" %}

**Step 3**: Click on Virtualize

{% include image.html file="/assets/UTM/16.png" alt="UTM virtualize option" caption="Select the Virtualize option" %}

**Step 4**: Click on Windows

{% include image.html file="/assets/UTM/17.png" alt="UTM Windows option" caption="Select Windows as the operating system" %}

**Step 5**: Import the Boot ISO Image that you have downloaded earlier

{% include image.html file="/assets/UTM/18.png" alt="UTM import ISO" caption="Import the Windows 11 ISO image" %}

# Install Windows
{:.no_toc}

{: .note }
> This section is under construction and will be updated soon.

# Set up Windows
{:.no_toc}
