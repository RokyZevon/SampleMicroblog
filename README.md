# README

######  Ruby version:  "2.3.3p222"

######  Rails version:   "5.0.0.1"

######  Database:    "MySQL"

######  Test:           "Minitest + Guard"

####  Description:

  * 一个简单的微博示例应用，用户注册前主页为欢迎界面和注册按钮，注册登录后主页变更为显示微博.

  * 注册时会验证邮箱和密码的有效性：
    * 邮箱不可与现有邮箱重复，且结构需为 example@example.example
    * 密码不可少于 6 位

  * 注册后本需要在注册邮箱点击激活链接激活账户，然而因为~~太贵~~没有搭建 SMTP 服务器，改为注册后自动激活.

  * 登录可持久化，勾选 "Remember me on this computer" 复选框即可.

  * 微博以发布时间逆序排序；可以在主页发布微博，微博内容限制为140字并可包含图片.

  * 用户登录后可以在Account -> Profile 管理自己发布的微博，可以在  Account -> Settings 进行 名字、邮箱、密码 的变更.

  * 用户可以关注或取消关注其他用户，关注用户的微博动态也会在首页显示在首页.
