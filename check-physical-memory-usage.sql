/*
* Source: https://dba.stackexchange.com/a/213048
*/

SELECT (physical_memory_in_use_kb / 1024) Phy_Memory_usedby_Sqlserver_MB, -- Gives total Physical memory used by SQL Server in MB.
	(locked_page_allocations_kb / 1024) Locked_pages_used_Sqlserver_MB, 
	(virtual_address_space_committed_kb / 1024) Total_Memory_UsedBySQLServer_MB, -- Gives total memory(RAM+Page file) used by SQL Server in MB.
	process_physical_memory_low,
	process_virtual_memory_low
FROM sys.dm_os_process_memory;
