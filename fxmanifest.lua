-- Resource_Metadata
fx_version 'cerulean'
games {  'gta5' }
lua54 'yes'
-- script_info
author 'mrellon | i.dx'
description '[QB] - [B4-CraftingSystem] - V1'
version '1.0.0'
-- client_scripts
client_scripts {
    'config.lua',
    'object.lua',
    'client/client.lua'
}
--server_script
server_script {
    'config.lua',
    'server.lua'
}
-- escrow_ignore
escrow_ignore {
    'config.lua',
    'object.lua',
}
-- dependency
dependency '/assetpacks'