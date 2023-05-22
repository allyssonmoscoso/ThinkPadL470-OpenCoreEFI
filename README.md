# Thinkpad L470 running macOS (OpenCore bootloader)

OpenCore version: <strong>0.9.2</strong>
<br>
MacOS version: <strong>Ventura </strong>

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

1)Open terminal

2)Enter commands below one by one
Settings for AC:


`sudo pmset -c standby 1`

`sudo pmset -c hibernatemode 0`

Setting for battery:

`sudo pmset -b standby 1`

`sudo pmset -b standbydelayhigh 900`

`sudo pmset -b standbydelaylow 60`

`sudo pmset -b hibernatemode 25`

`sudo pmset -b highstandbythreshold 70`

Settings for all:

`sudo pmset -a acwake 0`

`sudo pmset -a lidwake 1`

`sudo pmset -a powernap 0`

To restore default system settings run `pmset restoredefaults` command

## Custom CPU Power Management (CPUFriend).

1) Run the following script in Terminal

`git clone https://github.com/corpnewt/CPUFriendFriend; cd CPUFriendFriend; chmod +x ./CPUFriendFriend.command; ./CPUFriendFriend.command`

2) select preferred values
3) copy ssdt_data.aml into /EFI/OC/ACPI/ folder.
4) restart your thinkpad.

## Thanks to

[simprecicchiani](https://github.com/simprecicchiani/ThinkPad-T460s-macOS-OpenCore) (Original repository based)

The hackintosh community on GitHub, [InsanelyMac](https://www.insanelymac.com/forum/), and [r/hackintosh](https://www.reddit.com/r/hackintosh/).
