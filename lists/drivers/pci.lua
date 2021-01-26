--[[
Following table is database of PCI devices identifiers and drivers in OpenWrt to
support them. Feel free to expand it with additional devices.

Every device has to have numerical 'vendor' and 'device' identifier and list of
'packages' defined. Please also add comment with device name.
]]
local db = {
	{ -- Qualcomm Atheros AR9287 Wireless Network Adapter
		vendor = 0x168c,
		device = 0x002e,
		packages = {"ath9k"}
	},
	{ -- Qualcomm Atheros AR93xx Wireless Network Adapter (rev 01)
		vendor = 0x168c,
		device = 0x0030,
		packages = {"ath9k"}
	},
	{ -- Qualcomm Atheros QCA986x/988x 802.11ac Wireless Network Adapter
		vendor = 0x168c,
		device = 0x003c,
		packages = {"ath10k_pci"}
	},
}

----------------------------------------------------------------------------------
for _, device in pairs(devices) do
	for _, dbdev in pairs(db) do
		if (type(device) == "string" and device == "all") or
				(type(device) == "table" and device.vendor == dbdev.vendor and device.device == dbdev.device) then
			Install(unpack(dbdev.packages), { priority = 40 })
		end
	end
end
