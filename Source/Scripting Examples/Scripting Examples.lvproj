﻿<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Support" Type="Folder">
			<Item Name="Support" Type="Folder">
				<Item Name="Base.nivssdf" Type="Document" URL="../Support/Base.nivssdf"/>
				<Item Name="HW_Rx00_Tx24_Scheduled and Dynamic Labels.xml" Type="Document" URL="../Support/HW_Rx00_Tx24_Scheduled and Dynamic Labels.xml"/>
				<Item Name="Parameters in Scheduled and Dynamic Labels.xml" Type="Document" URL="../Support/Parameters in Scheduled and Dynamic Labels.xml"/>
			</Item>
		</Item>
		<Item Name="ARINC 429 Scripting.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Scripting/ARINC 429/ARINC 429 Scripting.lvlib"/>
		<Item Name="Ballard ARINC 429 Scripting Examples.lvlib" Type="Library" URL="../Ballard ARINC 429 Scripting Examples.lvlib"/>
		<Item Name="Ballard ARINC 429 Scripting.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Scripting/Ballard/Ballard ARINC 429 Scripting.lvlib"/>
		<Item Name="Post-Build Action.vi" Type="VI" URL="../Post-Build Action.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="ARINC 429 Import.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Import/ARINC 429 Import.lvlib"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Conditionally Add Parity Parameter.vi" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Conditionally Add Parity Parameter.vi"/>
				<Item Name="Conditionally Add SDI Parameter.vi" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Conditionally Add SDI Parameter.vi"/>
				<Item Name="Conditionally Add SSM Parameter.vi" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Conditionally Add SSM Parameter.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Custom Device API.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI VeriStand/Custom Device API/Custom Device API.lvlib"/>
				<Item Name="Custom Device Utility Library.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI VeriStand/Custom Device Tools/Custom Device Utility Library/Custom Device Utility Library.lvlib"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="Device Parameters.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Device Parameters.ctl"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Direction.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Direction.ctl"/>
				<Item Name="Encoding and Decoding.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Encoding and Decoding/Encoding and Decoding.lvlib"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Error Test Channel Number.vi" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Error Test Channel Number.vi"/>
				<Item Name="Error Test Label Count.vi" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Error Test Label Count.vi"/>
				<Item Name="Error Test Number Of Bits.vi" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Error Test Number Of Bits.vi"/>
				<Item Name="Error Test Start Bit Value.vi" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Error Test Start Bit Value.vi"/>
				<Item Name="Error Word Bits Checker for All Parameters on Label.vi" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Error Word Bits Checker for All Parameters on Label.vi"/>
				<Item Name="Error Word Bits Checker.vi" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Error Word Bits Checker.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Initialization Method.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Initialization Method.ctl"/>
				<Item Name="Initialize Channel Parameter (BNR, Unsigned, Unity Scaling).vi" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Initialize Channel Parameter (BNR, Unsigned, Unity Scaling).vi"/>
				<Item Name="Initialize Channel Parameter (Discrete).vi" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Initialize Channel Parameter (Discrete).vi"/>
				<Item Name="Label Properties.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Label Properties.ctl"/>
				<Item Name="Label.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Label.ctl"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_XML.lvlib" Type="Library" URL="/&lt;vilib&gt;/xml/NI_XML.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Parameter Definition.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Parameter Definition.ctl"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="SDI.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/SDI.ctl"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="SLSC.lvlib" Type="Library" URL="/&lt;vilib&gt;/SLSC/SLSC.lvlib"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Transfer Type.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/Transfer Type.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Update Hardware Configuration File Error.vi" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Custom Device Support/System Explorer/Implementation/System Explorer/Update Hardware Configuration File Error.vi"/>
				<Item Name="Update Parameters Configuration File Error.vi" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Custom Device Support/System Explorer/Implementation/System Explorer/Update Parameters Configuration File Error.vi"/>
				<Item Name="VS Channel Definition for Parameter.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/VS Channel Definition for Parameter.ctl"/>
				<Item Name="VS Channels Definition for All Labels on Hardware Channel.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/VS Channels Definition for All Labels on Hardware Channel.ctl"/>
				<Item Name="VS Channels Definition for Label.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/VeriStand Custom Device Scripting APIs/Ballard ARINC 429/Scripting/Custom Device Support/Shared/VS Channels Definition for Label.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="DOMUserDefRef.dll" Type="Document" URL="DOMUserDefRef.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="NationalInstruments.VeriStand.SystemDefinitionAPI" Type="Document" URL="NationalInstruments.VeriStand.SystemDefinitionAPI">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nislsclvapi.dll" Type="Document" URL="nislsclvapi.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="SLSC Switch Examples.lvlib" Type="Library" URL="../../../../niveristand-routing-and-faulting-custom-device/Source/Scripting Examples/SLSC Switch Examples.lvlib"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Examples" Type="Source Distribution">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{13CE6CA1-6220-4E13-B6D3-703749128956}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">Copies the examples to an output location, and the post-build step copies this project file to another output location and cleans up the copy to make it release ready. Clean up includes removing the build specification and any non-shipping items, such as the Auto-Remove virtual folder.</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Examples</Property>
				<Property Name="Bld_excludedDirectory[0]" Type="Path">vi.lib</Property>
				<Property Name="Bld_excludedDirectory[0].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[1]" Type="Path">instr.lib</Property>
				<Property Name="Bld_excludedDirectory[1].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[2]" Type="Path">user.lib</Property>
				<Property Name="Bld_excludedDirectory[2].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[3]" Type="Path">resource/objmgr</Property>
				<Property Name="Bld_excludedDirectory[3].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[4]" Type="Path">/C/ProgramData/National Instruments/InstCache/20.0</Property>
				<Property Name="Bld_excludedDirectory[5]" Type="Path">/C/Users/nitest/Documents/LabVIEW Data/2020(32-bit)/ExtraVILib</Property>
				<Property Name="Bld_excludedDirectoryCount" Type="Int">6</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Built/NI_AB_PROJECTNAME/Examples</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_postActionVIID" Type="Ref"></Property>
				<Property Name="Bld_previewCacheID" Type="Str">{59459AC1-4623-4D6A-B847-A9FDF84FB15C}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Destination Directory</Property>
				<Property Name="Destination[0].path" Type="Path">../Built/NI_AB_PROJECTNAME/Examples</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Built/NI_AB_PROJECTNAME/Examples/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{09D66E2F-BA3C-4ECA-B832-D10C2B7EF3A2}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[1].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Support</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
			</Item>
		</Item>
	</Item>
</Project>