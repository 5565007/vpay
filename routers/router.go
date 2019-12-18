package routers

import (
	"vpay/controllers"

	"github.com/astaxie/beego"
)

func init() {
	//beego.Router("/", &controllers.MainController{})
	beego.Router("/", &controllers.MainController{})
	beego.Router("/getqr", &controllers.MainController{}, "post:PostQR")
}
