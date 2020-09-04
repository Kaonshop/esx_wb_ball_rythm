resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'WhiteBear Gacha Ball'

version '1.3.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'server/server.lua'
}

client_scripts {

}

dependencies {
	'es_extended',
	'esx_billing'
}