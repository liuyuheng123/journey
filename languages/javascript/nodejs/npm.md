教程 https://blog.csdn.net/u011240877/article/details/76582670

官网 https://www.npmjs.com/

# package.json
Example
```json
{
  "name": "sbot",
  "version": "0.0.0",
  "private": true,
  "author": "Yu Heng Liu",
  "description": "Slack bot 1",
  "dependencies": {
    "@slack/client": "^5.0.1",
    "hubot": "^3.3.2",
    "hubot-diagnostics": "^1.0.0",
    "hubot-google-images": "^0.2.7",
    "hubot-google-translate": "^0.2.1",
    "hubot-help": "^1.0.1",
    "hubot-heroku-keepalive": "^1.0.3",
    "hubot-maps": "0.0.3",
    "hubot-pugme": "^0.1.1",
    "hubot-redis-brain": "^1.0.0",
    "hubot-rules": "^1.0.0",
    "hubot-scripts": "^2.17.2",
    "hubot-shipit": "^0.2.1",
    "hubot-slack": "^4.7.1",
    "nodeunit": "^0.11.3"
  },
  "scripts": {
    "test": "./node_modules/.bin/nodeunit test"
  },
  "engines": {
    "node": "0.10.x"
  }
}
```
## 作用
1. 作为一个描述文件，描述了你的项目依赖哪些包
2. 允许我们使用 “语义化版本规则”（后面介绍）指明你项目依赖包的版本
3. 让你的构建更好地与其他开发者分享，便于重复使用

## 内容
1. “name” 
    1. 全部小写，没有空格，可以使用下划线或者横线
2. “version” 
    1. x.x.x 的格式
    2. 符合“语义化版本规则”
3. 其他
    - description：描述信息，有助于搜索
    - main: 入口文件，一般都是 index.js
    - scripts：支持的脚本，默认是一个空的 test
    - keywords：关键字，有助于在人们使用 npm search 搜索时发现你的项目
    - author：作者信息
    - license：默认是 MIT
    - bugs：当前项目的一些错误信息，如果有的话

## dependencies
如果一个项目打算与别人分享，应该从 1.0.0 版本开始。以后要升级版本应该遵循以下标准：

- 补丁版本：解决了 Bug 或者一些较小的更改，增加最后一位数字，比如 1.0.1
- 小版本：增加了新特性，同时不会影响之前的版本，增加中间一位数字，比如 1.1.0
- 大版本：大改版，无法兼容之前的，增加第一位数字，比如 2.0.0


如果只打算接受补丁版本的更新（也就是最后一位的改变），就可以这么写： 
- 1.0
- 1.0.x
- ~1.0.4

如果接受小版本的更新（第二位的改变），就可以这么写： 
- 1
- 1.x
- ^1.0.4

如果可以接受大版本的更新（自然接受小版本和补丁版本的改变），就可以这么写： 
- *
- x

## 安装
```bash
npm install
npm install <package_name>
# 更新package.json
npm install <package_name> --save
# 全局
npm install -g <package-name>
```

## 卸载
```bash
npm uninstall <package-name>
```

# 其他命令
## npm run
npm run 会创建一个Shell，执行指定的命令，并临时将node_modules/.bin加入PATH 变量，这意味着本地模块可以直接运行。
package.json 中的 scripts 执行的脚本是本地项目内 node_modules -> .bin 内的脚本。






    

