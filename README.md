# 个人引导页项目

一个基于Java Spring Boot和Thymeleaf开发的现代化个人引导页面，具有响应式设计和丰富的交互效果。

## 项目特性

- 🎨 **现代化设计** - 采用渐变背景和毛玻璃效果
- 📱 **响应式布局** - 完美适配各种设备尺寸
- ⚡ **快速加载** - 优化的代码结构和资源加载
- 🎯 **用户友好** - 直观的导航和交互体验
- 🔧 **易于定制** - 模块化的代码结构，便于修改

## 技术栈

### 后端
- **Java 11** - 主要编程语言
- **Spring Boot 2.7.0** - Web应用框架
- **Thymeleaf** - 模板引擎
- **Maven** - 项目构建工具

### 前端
- **Bootstrap 5** - CSS框架
- **Font Awesome** - 图标库
- **Google Fonts** - 字体库
- **原生JavaScript** - 交互逻辑

## 项目结构

```
personal-landing-page/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/example/
│   │   │       ├── PersonalLandingPageApplication.java
│   │   │       └── controller/
│   │   │           └── HomeController.java
│   │   └── resources/
│   │       ├── application.yml
│   │       └── templates/
│   │           ├── index.html
│   │           ├── about.html
│   │           ├── projects.html
│   │           └── contact.html
│   └── test/
├── pom.xml
└── README.md
```

## 页面功能

### 1. 首页 (index.html)
- 个人介绍展示
- 社交媒体链接
- 浮动背景动画
- 鼠标视差效果

### 2. 关于页面 (about.html)
- 个人技能展示
- 工作经历时间线
- 教育背景信息
- 技能进度条动画

### 3. 项目展示页面 (projects.html)
- 项目卡片展示
- 技术标签筛选
- 项目分类功能
- 响应式网格布局

### 4. 联系页面 (contact.html)
- 联系信息展示
- 联系表单
- 社交媒体链接
- 位置信息

## 快速开始

### 环境要求
- Java 11 或更高版本
- Maven 3.6 或更高版本

### 安装步骤

1. **克隆项目**
   ```bash
   git clone <repository-url>
   cd personal-landing-page
   ```

2. **编译项目**
   ```bash
   mvn clean compile
   ```

3. **运行应用**
   ```bash
   mvn spring-boot:run
   ```

4. **访问应用**
   打开浏览器访问 `http://localhost:8080`

### 开发模式
项目支持热重载，修改代码后会自动重启：
```bash
mvn spring-boot:run -Dspring-boot.run.jvmArguments="-Dspring.devtools.restart.enabled=true"
```

## 自定义配置

### 修改个人信息
在 `HomeController.java` 中修改个人信息：
```java
@GetMapping("/")
public String home(Model model) {
    model.addAttribute("name", "您的姓名");
    model.addAttribute("title", "您的职位");
    model.addAttribute("description", "您的个人描述");
    return "index";
}
```

### 修改样式
在HTML模板的 `<style>` 标签中修改CSS样式，或创建独立的CSS文件。

### 添加新页面
1. 在 `HomeController.java` 中添加新的路由方法
2. 在 `templates/` 目录下创建对应的HTML模板
3. 更新导航栏链接

## 部署

### 打包应用
```bash
mvn clean package
```

### 运行JAR文件
```bash
java -jar target/personal-landing-page-1.0.0.jar
```

### Docker部署
```dockerfile
FROM openjdk:11-jre-slim
COPY target/personal-landing-page-1.0.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]
```

## 浏览器兼容性

- Chrome 60+
- Firefox 55+
- Safari 12+
- Edge 79+

## 性能优化

- 使用CDN加载外部资源
- 压缩CSS和JavaScript
- 优化图片资源
- 启用浏览器缓存

## 贡献指南

1. Fork 项目
2. 创建功能分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 打开 Pull Request

## 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 联系方式

如有问题或建议，请通过以下方式联系：

- 邮箱：example@email.com
- GitHub：[您的GitHub用户名](https://github.com/yourusername)

## 更新日志

### v1.0.0 (2024-01-01)
- 初始版本发布
- 实现基础的个人引导页功能
- 添加响应式设计和动画效果
- 支持多页面导航

---

**注意**: 请根据您的实际需求修改个人信息、样式和功能。这个项目提供了一个良好的起点，您可以根据自己的喜好进行定制。 