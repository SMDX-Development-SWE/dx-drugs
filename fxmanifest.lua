fx_version 'cerulean'
game 'gta5'

author 'Dizzexx'
description 'Ett simpelt drog script för QBCore som gör det möjligt att tillverka och hantera diverse droger.'
version '1.0.1'

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/*.lua'
}

client_scripts {
    'c/*'
}

server_scripts {
    's/*'
}