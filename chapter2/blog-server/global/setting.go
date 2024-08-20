package global

import (
	"go-tour/chapter2/blog-server/pkg/logger"
	"go-tour/chapter2/blog-server/pkg/setting"
)

var (
	ServerSetting   *setting.ServerSettingS
	AppSetting      *setting.AppSettingS
	DatabaseSetting *setting.DatabaseSettingS

	Logger *logger.Logger

	JWTSetting *setting.JWTSettingS
)
