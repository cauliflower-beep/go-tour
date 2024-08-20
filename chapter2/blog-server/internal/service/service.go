package service

import (
	"context"
	"go-tour/chapter2/blog-server/global"
	"go-tour/chapter2/blog-server/internal/dao"
)

type Service struct {
	ctx context.Context
	dao *dao.Dao
}

func New(ctx context.Context) Service {
	svc := Service{ctx: ctx}
	svc.dao = dao.New(global.DBEngine)
	return svc
}
