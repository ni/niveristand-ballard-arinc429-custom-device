# Parameters XML File
This Custom Device can be configured using a scripting API or a Parameters XML File. This XML file defines the labels, parameters, and other settings necessary to populate a valid configuration in the System Definition. This document explains the schema used for creating a Parameters XML File, shows example sections for different encoding configurations, and the defined tags.

## Schema Location
For the full schema file, see the `ARINC429_Parameters_XML_Schema.xsd` in the same directory as this document.

## XML Parameters File Examples

### BNR Parameter Example
The code snippet below is an example of a BNR Parameter.

```xml
<label>
	<labelDecimal>23</labelDecimal>
	<createSDIChannel>false</createSDIChannel>
	<createSSMChannel>true</createSSMChannel>
	<createParityChannel>true</createParityChannel>
	<parameter>
		<encoding>BNR</encoding>
		<signed>true</signed>
		<startBit>10</startBit>
		<numberOfBits>19</numberOfBits>
		<scale>234.6</scale>
		<offset>-2.4</offset>
		<name>Parameter 0</name>
		<unit>psi</unit>
	</parameter>
</label>
```

Notes:
- The Engine takes 19 Bits, starting the 11th Bit (Bit #10) in the raw ARINC 429 word. As this is a signed BNR Parameter, the left-most Bit is the Sign Bit. The engine converts these 19 Bits (2's complement) to decimal, multiplies by the <scale> value, and adds the <offset> value.
- This Parameter will have a VeriStand Channel named `Parameter 0` with a unit of `psi`.  

### BCD Parameter Example
The code snippet below is an example of BCD Parameters.

```xml
<channel>
	<hardwareChannel>26</hardwareChannel>
	<label>
		<labelDecimal>28</labelDecimal>
		<parameter>
			<encoding>BCD</encoding>
			<signed>true</signed>
			<startBit>18</startBit>
			<numberOfBits>11</numberOfBits>
			<scale>1.0</scale>
			<offset>0.0</offset>
			<name>Parameter 5</name>
			<unit>psi</unit>
			<defaultValue>-724</defaultValue>
		</parameter>
		<parameter>
			<encoding>BCD</encoding>
			<signed>false</signed>
			<startBit>10</startBit>
			<numberOfBits>8</numberOfBits>
			<scale>1.0</scale>
			<offset>0.0</offset>
			<name>Parameter 16</name>
			<unit>psi</unit>
			<defaultValue>25</defaultValue>
		</parameter>
	</label>
<channel>
```

Notes:
- These are Parameters definition for a Tx Channel as <defaultValue> element is present and <hardwareChannel> element is in [16:31] range.
- Below is the breakdown of <labelDecimal>28 with individual Label Bits and BCD Digits (top row represents Bits Indexes):
![429_Frame](429_Frame.png)
- This Parameter will have a VeriStand Channel named `Parameter 5` with a unit of `psi`. 
- For Parameter `Parameter 5`, SSM Bits (Bits [29:30]) are used for the sign, we consider it negative if SSM Bits are 11b (0x3). For all other SSM Bits values, we consider the BCD to be positive. Bits [18:28] are 3 digits (`CHAR 1`, `CHAR 2`, and `CHAR 3`). As no Scaling is applied, value can vary in range: [-799:799]. The left-most digit `CHAR 1` has only 3 bits width.
- For Parameter `Parameter 16`, Bits [10:17] are 2 digits (`CHAR 4` and `CHAR 5`). As no Scaling is applied, value can vary in range: [0:99].

### Discrete Parameter Example
The code snippet below is an example of Discrete Parameters.

```xml
<label>
	<labelDecimal>23</labelDecimal>
	<parameter>
		<encoding>Discrete</encoding>
		<startBit>10</startBit>
		<numberOfBits>1</numberOfBits>
		<name>Parameter 30</name>
	</parameter>
</label>
```

Notes:
- The Engine takes 1 Bit, starting the 11th Bit (Bit #10) in the raw ARINC 429 word. No Scaling is applied.
- This Parameter will have a VeriStand Channel named `Parameter 30` with no units.
