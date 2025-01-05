# Thinkpad L470 running macOS (OpenCore bootloader)

OpenCore version: <strong>1.0.3</strong>
<br>
MacOS version: <strong>Sequoia</strong>

Note: <strong> I'll be honest, I don't think I'm going to continue to support later versions :/ </strong>

<summary><strong>Tested Hardware</strong></summary>
</br>

| Model              | Thinkpad L470 20F9003AUS                                                                                 |
|:-------------------|:----------------------------------------------------------------------------------------------------------|
| Processor          | Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz, 2960 MHz                                                                 |
| Graphics           | Intel Skylake GT2 [HD Graphics 520]                                                                          |
| Memory             | 32GB DIMM DDR4, dual-channel                                                        |
| Display            | 13" HD (1920x1080) IPS, non-touch                                                                       |
| Storage            | SSD KINGSTON SKC6005  512G                                                                             |
| Ethernet           | Intel Ethernet Connection I219-LM                                                          |
| WLAN + Bluetooth   | Intel Corporation Wireless 8260 (rev 3a)                                       |
| Camera             | HD720p resolution, low light sensitive, fixed focus                                                       |
| Audio support      | HD Audio, Realtek ALC3245 codec, stereo speakers 1Wx2, dual array microphone, combo audio/microphone jack |
| Keyboard           | 6-row, spill-resistant, multimedia Fn keys, LED backlight                                                 |
| Battery            | LNV-45N1, Lithium Ion Battery                             

## Setup Hibernatemode & Sleep at low Battery.

1. Open Terminal and navigate to the directory where the script is located.
2. Make the script executable by running the following command:
    ```sh
    chmod +x configure_pmset.sh
    ```
3. Execute the script with the following command:
    ```sh
    sudo ./configure_pmset.sh
    ```
This will apply the power management settings as defined in the script.


To restore default system settings run `pmset restoredefaults` command

## Custom CPU Power Management (CPUFriend).

1) Run the following script in Terminal

`git clone https://github.com/corpnewt/CPUFriendFriend; cd CPUFriendFriend; chmod +x ./CPUFriendFriend.command; ./CPUFriendFriend.command`

2) select preferred values
3) copy ssdt_data.aml into /EFI/OC/ACPI/ folder.
4) restart your thinkpad.

## YogaSMC for FN keys functions and other stuffs

[YogaSMC](https://github.com/zhen-zen/YogaSMC)

## Thanks to

[simprecicchiani](https://github.com/simprecicchiani/ThinkPad-T460s-macOS-OpenCore) (Original repository based)

The hackintosh community on GitHub, [InsanelyMac](https://www.insanelymac.com/forum/), and [r/hackintosh](https://www.reddit.com/r/hackintosh/).
