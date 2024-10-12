module github.com/fluxxset/evilginx_monitor

go 1.17

require (
	github.com/fsnotify/fsnotify v1.4.9 // Downgrade from v1.7.0
	github.com/go-telegram-bot-api/telegram-bot-api/v5 v5.4.0 // Downgrade from v5.5.1
	github.com/mattn/go-sqlite3 v1.14.15 // Downgrade from v1.14.23
)

require (
	github.com/bwmarrin/discordgo v0.23.1 // Downgrade from v0.28.1 (Pre-Go 1.18)
	github.com/fatih/color v1.12.0 // Downgrade from v1.17.0
	github.com/glebarez/sqlite v1.7.0 // Downgrade from v1.11.0
)

require (
	github.com/dustin/go-humanize v1.0.1 // indirect; Downgrade from v1.0.1
	github.com/glebarez/go-sqlite v1.20.3 // indirect
	github.com/google/uuid v1.3.0 // indirect; Downgrade from v1.3.0
	github.com/gorilla/websocket v1.4.0 // indirect; Downgrade from v1.4.2
	github.com/jinzhu/inflection v1.0.0 // indirect; Keep as is (compatible)
	github.com/jinzhu/now v1.1.5 // indirect; Downgrade from v1.1.5
	github.com/mattn/go-colorable v0.1.8 // indirect; Downgrade from v0.1.13
	github.com/mattn/go-isatty v0.0.17 // indirect; Downgrade from v0.0.20
	github.com/remyoudompheng/bigfft v0.0.0-20230126093431-47fa9a501578 // indirect; Downgrade from 2023 version
	golang.org/x/crypto v0.0.0-20210506145944-38f3c27a63bf // indirect; Downgrade from 202104
	golang.org/x/sys v0.4.0 // indirect; Downgrade from v0.25.0
	gorm.io/gorm v1.24.5 // indirect; Downgrade from v1.25.7 (Pre-Go 1.18 version)
	modernc.org/libc v1.22.2 // indirect; Downgrade from v1.22.5
	modernc.org/mathutil v1.5.0 // indirect; Downgrade from v1.5.0
	modernc.org/memory v1.5.0 // indirect; Downgrade from v1.5.0
	modernc.org/sqlite v1.20.3 // indirect; Downgrade from v1.21.2
)
