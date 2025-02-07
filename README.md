# Ballard ARINC 429 Custom Device

The **Ballard ARINC 429 Custom Device** allows use of [Astronics ARINC 429 PXIe Modules with Ballard Technology](http://www.ni.com/en-ca/shop/select/pxi-arinc-429-interface-module) in VeriStand. The custom device targets one **core** of a Ballard ARINC 429 PXIe module. To target multiple modules or multiple cores on the same module, use multiple instances of this custom device.

The custom device supports the following functionality:
- Import configuration files via scripting and System Explorer
- LabVIEW scripting of the custom device configuration
- Viewing read-only configuration in System Explorer
- Transmit and Receive configured labels
   - Scheduled and Acyclic labels
   - Multiple parameters per label
   - Multiple labels per channel
   - Multiple Rx and Tx channels per core
- Log all configured channels and labels per core

## Using the Custom Device

- Download the latest release package from the [Releases page](https://github.com/ni/niveristand-ballard-arinc429-custom-device/releases).
- See the [User Guide](Docs/User%20Guide/User%20Guide.md) for a walkthrough of using the Custom Device.
- See the [Parameters XML File Schema documentation](Docs/Parameters%20XML%20File/Parameters%20XML%20File.md) for configuring the custom device.

## Requirements

- PXI Linux RT Controller
- Supported Ballard ARINC 429 PXI Module

**Note**: Only NI-keyed PXI modules are supported by the custom device. The part number should have the form `LV-222-###-###`, were `###` stands for the core configuration. **441** and **442** core models are supported. See the mapping between NI and Ballard part numbers on [ni.com](https://www.ni.com/en-us/support/documentation/supplemental/17/astronics-ballard-and-national-instruments-part-number-mapping.html).

## LabVIEW Source Code Version

LabVIEW 2023

## Dependencies

### Running the custom device

- [VeriStand 2023 or later](https://www.ni.com/en-us/support/downloads/software-products/download.veristand.html)
- Optional: [Astronics Ballard Avionics Driver](https://www.ni.com/en-us/support/downloads/drivers/download.astronics-ballard-avionics-driver.html#370805)

**Note**: For using 2025 Q1 Base System Image of Astronics Ballard Avionics Driver, install the package [libpcre1](http://download.ni.com/#ni-linux-rt/feeds/2025Q1/x64/main/core2-64/libpcre1_8.45-r0.241_core2-64.ipk) on the target using the command: `opkg install <path to the libpcre1 package on target>`

### Real-Time target software components

- Astronics Ballard Avionics Driver
  - Must enable the `ni-third-party` feed in MAX to install

### Developing or building from source

- [LabVIEW 2023 or later](https://www.ni.com/en-us/support/downloads/software-products/download.labview.html)
- [LabVIEW Real-Time Module](https://www.ni.com/en-us/support/downloads/software-products/download.labview-real-time-module.html)
- [Astronics Ballard Avionics Driver and LabVIEW API](https://www.ni.com/en-us/support/downloads/drivers/download.astronics-ballard-avionics-driver.html#370805)
- [VeriStand Custom Device Development Tools](https://github.com/ni/niveristand-custom-device-development-tools)
  - Install the latest package from the [release page](https://github.com/ni/niveristand-custom-device-development-tools/releases)
- [VeriStand Custom Device Message Library](https://github.com/ni/niveristand-custom-device-message-library)
  - Install the latest package from the [release page](https://github.com/ni/niveristand-custom-device-message-library/releases)
- [VeriStand Custom Device Testing Tools](https://github.com/ni/niveristand-custom-device-testing-tools)
  - Install the latest package from the [release page](https://github.com/ni/niveristand-custom-device-testing-tools/releases)

## Git History & Rebasing Policy

Branch rebasing and other history modifications will be listed here, with several notable exceptions:
- Branches prefixed with `dev/` may be rebased, overwritten, or deleted at any time.
- Pull requests may be squashed on merge.

## License

This Ballard ARINC 429 custom device is licensed under an MIT-style license (see LICENSE). Other incorporated projects may be licensed under different licenses. All licenses allow for non-commercial and commercial use.
