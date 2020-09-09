<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
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
		<Item Name="Includes" Type="Folder">
			<Item Name="Communication Bus Interfaces.lvlibp" Type="LVLibp" URL="../../../Includes/Communication Bus Interfaces.lvlibp">
				<Item Name="Custom Device API.lvlib" Type="Library" URL="../../../Includes/Communication Bus Interfaces.lvlibp/1abvi3w/vi.lib/NI VeriStand/Custom Device API/Custom Device API.lvlib"/>
				<Item Name="Execution Unit.lvlib" Type="Library" URL="../../../Includes/Communication Bus Interfaces.lvlibp/Execution Unit/Execution Unit.lvlib"/>
			</Item>
		</Item>
		<Item Name="Protocol Implementation.lvlib" Type="Library" URL="../Protocol Implementation.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Implementation" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{12162948-4B8C-482D-AB68-2AE096A793AC}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Implementation</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Implementation</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{1523BBE1-1258-4B35-8621-D71B7E2450DC}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">PackedLibrary.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Implementation/PackedLibrary.lvlibp</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Implementation</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{AB1FF4AC-DB9A-420D-8B76-CFE355EF928F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Implementation</Property>
				<Property Name="TgtF_internalName" Type="Str">Implementation</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2020 </Property>
				<Property Name="TgtF_productName" Type="Str">Implementation</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{D7D6809F-B397-4A65-B317-F7B2510B683D}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">PackedLibrary.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
