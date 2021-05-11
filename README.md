# Ballard ARINC 429 Custom Device

This custom device is a concrete effort to apply the **VeriStand Communications Bus Template** to the Ballard hardware implementing the ARINC 429 protocol for bus communications. This custom device supports the following functionality on a single core of a single Ballard card installed to a Real-Time PXI system running Linux_x64 RTOS:
 - Import configuration files
 - View configuration
 - Deploy system definition
 - Transmit and Receive configured labels
    - Scheduled and Acyclic labels
    - Multiple parameters per label
    - Multiple labels per channel
    - Multiple Rx and Tx channels per core

## LabVIEW Version

LabVIEW 2020

## Dependencies

- [VeriStand Custom Device Development Tools](https://github.com/ni/niveristand-custom-device-development-tools)
- [NI VeriStand Custom Device Testing Tools](https://github.com/ni/niveristand-custom-device-testing-tools)
- [Astronics Ballard Avionics Driver and LabVIEW API](https://www.ni.com/en-us/support/downloads/drivers/download.astronics-ballard-avionics-driver.html#370805)

## Git History & Rebasing Policy

Branch rebasing and other history modifications will be listed here, with several notable exceptions:
- Branches prefixed with `dev/` may be rebased, overwritten, or deleted at any time.
- Pull requests may be squashed on merge.

## License

This Ballard ARINC 429 custom device is licensed under an MIT-style license (see LICENSE). Other incorporated projects may be licensed under different licenses. All licenses allow for non-commercial and commercial use.
