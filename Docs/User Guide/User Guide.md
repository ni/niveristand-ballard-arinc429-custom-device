# Using the Ballard ARINC 429 Custom Device

This guide demonstrates how to configure and deploy the Ballard ARINC 429 custom device. Using the receive/transmit channels on the first pin pair of the Ballard ARINC 429 PXI module, it is possible to use the custom device to send and receive data without external wiring.

## Configure the Ballard ARINC 429 Hardware

The custom device targets one **core** of a Ballard ARINC 429 PXI module. To target multiple modules or multiple cores on the same module, you must use multiple instances of the custom device.

A valid hardware configuration for the core must be provided to each instance of the custom device. The hardware configuration is provided by an XML file that adheres to Ballard's schema, referred to here as the `Hardware XML` file. Ballard's driver includes the `BTI XML Editor` application to generate valid hardware configurations.

![BTI XML Editor](Screenshots/BTI_XML_Configuration.PNG)

Additionally, the `name` attribute for each label in the hardware configuration file should adhere to the following format in order to be recognized by the custom device: name="label #" where # is the `labelDecimal`, e.g. "label 16".  If the label uses SDI, the label should also include `_N` at the end of the label, where N is the SDI in decimal form, e.g. "label 16_1" for SDI=01, or "label 16_3" for SDI=11.  The `BTI XML Editor` will *NOT* generate these label names by default, so you will need to input them in the editor or modify the hardware configuration file.

Example line from hardware configuration file:  <bti:message ID="123" *name="label 16_2"* messageBufferIDRef="123123" minRate="1000" maxRate="1000" *labelDecimal="16" SDI="10"* monitor="false">

A simple Hardware XML file is included for getting started with the custom device.

## Configure the Custom Device

This guide shows two options for configuring the custom device:
- Importing a Parameters file in System Explorer
- Scripting the custom device configuration

### Importing a Parameters file in System Explorer
The Parameters file is generated from an XML schema for configuring the custom device. It must match the Hardware XML file's configuration for the Ballard hardware. More information about the Parameters file XML schema can be found in `Docs/Parameters XML File/Parameters XML File.md`.

This example uses simple example Parameters and Hardware files found in the `Assets` directory:
- `Assets/Parameters.xml`
- `Assets/Hardware.xml`

The files are configured with two ARINC 429 channels each containing the same two labels. The following XML snippet shows the Parameters file configuration of the transmit channel: Label 07 is an acyclic label with one BNR parameter, and Label 23 is a cyclic label with one BNR parameter. The receive channel contains two labels configured identically.

```xml
	<channel>
		<hardwareChannel>16</hardwareChannel>
		<direction>outgoing</direction>
		<speed>high</speed>
		<label>
			<labelDecimal>07</labelDecimal>
			<transferType>1</transferType>
			<parameter>
				<encoding>BNR</encoding>
				<signed>true</signed>
				<startBit>10</startBit>
				<numberOfBits>19</numberOfBits>
				<scale>1.0</scale>
				<offset>0.0</offset>
				<name>07_Parameter 0</name>
				<unit>psi</unit>
				<defaultValue>50.0</defaultValue>
			</parameter>
		</label>
		<label>
			<labelDecimal>23</labelDecimal>
			<transferType>0</transferType>
			<period>10000</period>
			<parameter>
				<encoding>BNR</encoding>
				<signed>true</signed>
				<startBit>10</startBit>
				<numberOfBits>19</numberOfBits>
				<scale>1.0</scale>
				<offset>0.0</offset>
				<name>23_Parameter 0</name>
				<unit>psi</unit>
				<defaultValue>52.0</defaultValue>
			</parameter>
		</label>
	</channel>
```

Transmit channel 16 will loop back without external wiring to receive channel 0. This is based on the [send and receive pairs](https://www.ni.com/pdf/manuals/MA223_OmniBus%20II%20NI%20PXIe%20User%20Manual_C.1.pdf#page=50) of the channel layouts for the Ballard ARINC 429 hardware.

#### Configure the Custom Device in System Explorer

1. Create a new VeriStand Project and configure your PXI Linux RT target.
2. Navigate to the `Targets\Controller\Hardware\Custom Devices` entry in the tree.
3. Right-click the **Custom Devices** entry and add a new instance of the **National Instruments\Ballard ARINC 429** custom device.
4. Use the Main Page to set the **PXI Slot Number** and **Core Number** accordingly.
![System Explorer Main Page](Screenshots/System_Explorer_main_configured.PNG)
5. Navigate to the **Configuration Files** page.
6. Use the browse button next to each box to select the example files used for this example.
   1. Hardware file: `niveristand-ballard-arinc429-custom-device\Docs\User Guide\Assets\Hardware.xml`
   2. Parameters file: `niveristand-ballard-arinc429-custom-device\Docs\User Guide\Assets\Parameters.xml`
![System Explorer Configuration Files](Screenshots/System_Explorer_configuration_files_configured.PNG)

Note: After configuring the custom device, all of the configuration under `Ports` is read-only except for the `Description` field on each page.

![System Explorer Parameter](Screenshots/System_Explorer_parameter_configured.PNG)

#### Scripting the Custom Device Configuration

The Ballard ARINC 429 custom device includes a LabVIEW scripting API to configure the custom device programmatically. This allows users to parse an existing ARINC 429 database into a working custom device configuration without the need to create a Parameters file. It also allows importing a Parameters file programmatically instead of through System Explorer.

To use the scripting API, the optional scripting package must be installed:
`ni-ballard-arinc-429-veristand-20xx-labview-support`

The scripting API includes two example files inside a LabVIEW example project found at the following directory: `C:\Program Files (x86)\National Instruments\LabVIEW 20xx\examples\NI VeriStand Custom Devices\Ballard\ARINC 429\Support`. It contains two example VIs:

- `Import Parameters Configuration to New Ballard ARINC 429 Custom Device.vi` - Demonstrates using the Ballard ARINC 429 scripting API to configure the custom device by importing a parameters configuration file.
- `Build New Ballard ARINC 429 Custom Device.vi` - Demonstrates using the Ballard ARINC 429 scripting API to configure the custom device by building from configuration clusters.

![Scripting Examples Project](Screenshots/Scripting_examples_project.PNG)

### Deploy the System Definition

After configuring the System Definition with the custom device, deploy the System Definition using VeriStand. Once the deployment state reaches **Connected**, use a VeriStand screen to display the custom device inputs and outputs. This example uses VeriStand 2020 R5, so your screen controls may behave differently depending on version.

1. Open a VeriStand Screen
2. Highlight the **System Definition** tree in the left rail
3. Expand the tree to `Targets\Controller\Hardware\Custom Devices\Ballard ARINC 429\Ports`
4. Drag the **Ports** item onto the screen
5. Change the values written to the outgoing channel 16 (**07_Parameter 0** and **23_Parameter 0**)
6. Toggle the **Trigger** and **Disable** VeriStand channels under each label to see the behavior reflected to the incoming channels

![VeriStand Screen](Screenshots/VeriStand_screen_deployed.PNG)

### Modifying the Custom Device Configuration

Once the custom device is configured, you can change the configuration using the **Configuration Files** page in System Explorer. If the Parameters file changes on disk, use the **Refresh** button. If you need to select a new file, press the button to load a new path into the dialog.

Each time the configuration is changed, the **Ballard ARINC 429 Refresh** dialog will be displayed to compare the current and new configurations. Press **Apply** to accept the changes, or **Cancel** to exit without reconfiguring.

![Refresh Dialog](Screenshots/Refresh_dialog.PNG)

## Configuring Logging

The custom device can be configured to log all data received by channels configured to be monitored in the Hardware XML file. The logged data is saved to a .csv file on the real-time target.

To configure logging use the **Logging** page in System Explorer. By default, the **Enable Logging** box is unchecked. Check the **Enable Logging** box and configure the other logging properties to configure the log file. As noted in the help on the page, specify which messages to log using the Hardware XML file. Labels with `monitor="true"` and all labels on channels with `monitorMode="All"` are logged.

![Logging Configuration](Screenshots/Logging_Configuration.png)

When logging is enabled, the log file is opened and written while the system definition is deployed. To stop logging, undeploy the system definition. After retrieving the file from the target, the contents will be saved like the example below. This is the data logged when triggering the acyclic message defined in the User Guide assets (Channel 0, Label 7).

```
time stamp,channel,label,sdi,data word
9.958172,0,7,0,3758147591
14.593172,0,7,0,3758152711
```

To limit the impact on real-time performance, the logged data read from the bus monitor is not converted to parameters. The **channel**, **label**, and **sdi** values are read from the message and logged. However, the **data word** is the raw 32-bit value of the message. Converting the two logged data words above to binary notation shows that the first message was carrying a data value of **0b110010** or **0d50**.

![Logged Frame 1](Screenshots/Logged_Frame_1.png)

Similarly, the second message was carrying a data value of **0b110111** or **0d55**.

![Logged Frame 2](Screenshots/Logged_Frame_2.png)

## Analyzing Performance

This custom device can optionally report the execution time of each execution unit per iteration. To further understand the maximum loop rate achievable by the custom device for a given configuration, see the [Theory of Operations](../Theory%20of%20Operations/Theory%20of%20Operations.md#Using-Timing-Channels-to-Analyze-Performance) for an explanation of the execution mode and timing implications of each Execution Unit.
