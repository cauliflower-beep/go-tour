package setting

import "github.com/spf13/viper"

type Setting struct {
	vp *viper.Viper
}

// 初始化基础配置
func NewSetting() (*Setting, error) {
	vp := viper.New()
	vp.AddConfigPath("configs/")

	vp.SetConfigName("config")
	vp.SetConfigType("yaml")
	err := vp.ReadInConfig()
	if err != nil {
		return nil, err
	}

	return &Setting{vp}, nil
}
