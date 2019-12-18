package main

import (
	_ "vpay/models"
	_ "vpay/routers"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

func main() {
	beego.Run()
}

func init() {
	orm.RegisterDataBase("default", "mysql", "root:root@tcp(127.0.0.1:3306)/vpay?charset=utf8", 30)
	// create table自动创建表 参数二为是否开启创建表 参数三是否更新表
	orm.RunSyncdb("default", false, true)
}
