package controllers

import (
	"encoding/base64"
	"time"
	"vpay/models"
	"vpay/utils"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	qrcode "github.com/skip2/go-qrcode"
)

type MainController struct {
	beego.Controller
}
type PayQr struct {
	Id      string `form:"-"`
	Name    string `form:"name"`
	RepName string `form:"repname"`
	Tel     string `form:"tel"`
	QQ      string `form:"qq"`
	Money   string `form:"money"`
}

var Website string = "vpay免签支付系统"

func (this *MainController) SendData(resp PayQr) {
	this.Data["json"] = resp
	this.ServeJSON()
}

func (c *MainController) Get() {
	c.Data["Website"] = Website
	c.TplName = "generate.tpl"
}

func (c *MainController) PostQR() {
	//1.得到用户信息
	qrinfo := PayQr{}
	if err := c.ParseForm(&qrinfo); err != nil {
		//handle error
	}
	//2.与数据库匹配判断帐号密码是否正确
	o := orm.NewOrm()
	aliacc := models.VisaAlipayAccount{Id: 7}
	if err := o.Read(&aliacc); err != nil {
		//handle error
	}

	CreateTime, _ := time.Parse("2006-01-02 15:04:05", time.Now().Format("2006-01-02 15:04:05"))
	OrderNum := utils.GetFullName()
	qrorder := models.VisaQrcodeOrder{
		Userid:      aliacc.Userid,
		OrderNum:    OrderNum, //订单号
		PlayAccount: qrinfo.Name,
		Phone:       qrinfo.Tel,
		Qq:          qrinfo.QQ,
		Money:       qrinfo.Money,
		CreateTime:  CreateTime,
	}
	if _, err := o.Insert(&qrorder); err != nil {
		//handle error
	}

	beego.Info(aliacc.Userid)
	c.Data["Website"] = Website
	c.Data["Qrcode"] = c.QR(aliacc.Userid, qrinfo.Money, qrorder.OrderNum)
	c.TplName = "pay.tpl"

	// go func() {
	// 	time.Sleep(time.Millisecond * 1000 * 10)
	// 	c.Redirect("/payok", 302)
	// 	// c.Ctx.Redirect(302, "/payok")
	// 	beego.Info("------------")
	// }()

	time.Sleep(time.Millisecond * 1000 * 60)
	paylist := models.VisaAlipaylist{Note: qrorder.OrderNum}
	if err := o.Read(&paylist); err != nil {
		//handle error
	}

}

//通用方法生成二维码
func (c *MainController) QR(userid string, money string, note string) string {
	var url string
	url = "alipays://platformapi/startapp?appId=20000123&actionType=scan&biz_data={\"s\": \"money\",\"u\": \"" + userid + "\",\"a\": \"" + money + "\",\"m\":\"" + note + "\"}"
	png, _ := qrcode.Encode(url, qrcode.Medium, 256)
	sourcestring := base64.StdEncoding.EncodeToString(png)
	return sourcestring
}
