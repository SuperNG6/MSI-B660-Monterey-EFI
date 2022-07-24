#!/bin/bash

# get release tag
NVMeFix_TAG=$(wget -qO- https://raw.githubusercontent.com/SuperNG6/Acidanthera-Hackintosh-Tools/main/ReleaseTag | grep 'NVMeFix' | cut -d= -f2-)
IntelMausi_TAG=$(wget -qO- https://raw.githubusercontent.com/SuperNG6/Acidanthera-Hackintosh-Tools/main/ReleaseTag | grep 'IntelMausi' | cut -d= -f2-)
VirtualSMC_TAG=$(wget -qO- https://raw.githubusercontent.com/SuperNG6/Acidanthera-Hackintosh-Tools/main/ReleaseTag | grep 'VirtualSMC' | cut -d= -f2-)
Lilu_TAG=$(wget -qO- https://raw.githubusercontent.com/SuperNG6/Acidanthera-Hackintosh-Tools/main/ReleaseTag | grep 'Lilu' | cut -d= -f2-)
WhateverGreen_TAG=$(wget -qO- https://raw.githubusercontent.com/SuperNG6/Acidanthera-Hackintosh-Tools/main/ReleaseTag | grep 'WhateverGreen' | cut -d= -f2-)
OpenCorePkg_TAG=$(wget -qO- https://raw.githubusercontent.com/SuperNG6/Acidanthera-Hackintosh-Tools/main/ReleaseTag | grep 'OpenCorePkg' | cut -d= -f2-)
AppleALC_TAG=$(wget -qO- https://raw.githubusercontent.com/SuperNG6/Acidanthera-Hackintosh-Tools/main/ReleaseTag | grep 'AppleALC' | cut -d= -f2-)

# generate Changelog.md
cat > Changelog.md << EOF
1、build MAG B660M MORTAR DDR4 Hackintosh EFI
2、add support for General AMD GPU & RX550Lexa GPU
3、support macOS Monterey 12.5
4、All functions are working properly （icloud、Handoff、Siri、FaceTime、imessage、Airdrop、sleep、Apple Watch wake up... ）

| Components    | Version               |
| ------------- | --------------------- |
| OpenCorePkg   | ${OpenCorePkg_TAG}    | 
| AppleALC      | ${AppleALC_TAG}       |
| IntelMausi    | ${IntelMausi_TAG}     |
| Lilu          | ${Lilu_TAG}           |
| VirtualSMC    | ${VirtualSMC_TAG}     |
| WhateverGreen | ${WhateverGreen_TAG}  |
| NVMeFix       | ${NVMeFix_TAG}        |

EOF

