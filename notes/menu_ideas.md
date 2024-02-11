# Ideas for menus

## General Ideas
This program will run mainly in text mode(likely mode 03h).

## Menu Layout Ideas

### Full layout

<pre>
Main Menu
&#x251C;&#x2500; Hardware
&#x2502;  &#x2514;&#x2500; Components
&#x2502;     &#x251C;&#x2500; CPU
&#x2502;     &#x251C;&#x2500; RAM
&#x2502;     &#x2502;  &#x2514;&#x2500; ...
&#x2502;     &#x251C;&#x2500; SSD/HDD
&#x2502;     &#x2502;  &#x2514;&#x2500; ...
&#x2502;     &#x2514;&#x2500; PSU
&#x251C;&#x2500; Booting
&#x2502;  &#x2514;&#x2500; ...
&#x2514;&#x2500; BIOS
   &#x2514;&#x2500; ...
</pre>

> Hm, this gives me an idea.  I should have a special menu, called "Quick Select"  
> It should give the user a menu to choose across all menus, submenus, etc.

### Main Menu
The main menu will be where the user starts. (duh)  
The menu will contain the following selections:  

    Hello, I am Computer ver. XX.XX.XX

    Main Menu

    Hardware
    Booting
    BIOS

    Shut down

### Hardware Menu
    HARDWARE MENU

    COMPONENTS

    BACK

### Attached Components
    ATTACHED COMPONENTS MENU

    PCI/PCIe-ATTACHED
    DRIVES

    BACK

### PCI/PCIe-Attached Menu
When this menu is entered, the system will collect info about PCI(e) devices.

    Collecting information. Please wait.

Now that we have collected all possible info about connected devices, 
we can now display this menu.

In this example, there is a **Sound Blaster 16** attached to **PCI port 0**.

    PCI/PCIe-Attached Devices Menu
    
    3 External PCI Ports (1 Used, 2 Available)
    3 External PCIe Ports (0 Used, 3 Available)

    PCI Port 0: Multimedia Device
    PCI Port 1: UNUSED
    PCI Port 2: UNUSED

    PCIe Port 0: UNUSED
    PCIe Port 1: UNUSED
    PCIe Port 2: UNUSED

    BACK

The devices can be selected from this menu, and information can be displayed about them.

When **Port 0** is selected in this example.

### Drive Menu

## Other Ideas
* Should the program include graphics if the available video hardware allows?
* Should program run at the highest possible video mode system offers?   
    * If so, different designs for different modes?
    * Should maintain style throughout.
* I wanna unify all pci-identifiable devices