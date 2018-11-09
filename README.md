# Nim-learn
Nim Program Language

---

---

## nim

Nim的**编译器**

```shell
nim c <project.nim>						# 普通编译，不优化
nim c -r <project.nim>					# 编译并运行
nim -d:release c <project.nim>			# 为发布进行优化编译
```

---

## nimble

Nim的**包管理器**

```shell
# 创建项目
nimble init project_name			# 初始化项目

# 安装模块
nimble search <module_name>			# 搜索指定模块
nimble install <module_name>		# 安装指定模块

# 自动编译，在 .nimble 文件同路径下执行
nimble build
nimble install						# 自动编译并安装在PATH路径 '.nimble/bin' 下
```

---

---

## Question

- [ ] 方法的重载