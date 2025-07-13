@echo off
chcp 65001 >nul
title 个人引导页 - 快速启动

echo.
echo ========================================
echo           个人引导页快速启动
echo ========================================
echo.

REM 检查Java是否安装
echo [1/4] 检查Java环境...
java -version >nul 2>&1
if errorlevel 1 (
    echo ❌ 错误: 未找到Java，请先安装Java 11或更高版本
    echo 下载地址: https://www.oracle.com/java/technologies/downloads/
    pause
    exit /b 1
) else (
    echo ✅ Java环境检查通过
)

REM 设置JAVA_HOME
echo [2/4] 设置环境变量...
set JAVA_HOME=C:\Program Files\Java\jdk-17
if not exist "%JAVA_HOME%\bin\java.exe" (
    set JAVA_HOME=C:\Program Files\Java\jdk-11
)
if not exist "%JAVA_HOME%\bin\java.exe" (
    echo ❌ 错误: 找不到Java安装目录
    echo 请确保Java已正确安装
    pause
    exit /b 1
)
echo ✅ JAVA_HOME设置为: %JAVA_HOME%

REM 编译项目
echo [3/4] 编译项目...
echo 正在下载依赖，请稍候...
call mvnw.cmd clean compile -q
if errorlevel 1 (
    echo ❌ 编译失败，请检查网络连接
    pause
    exit /b 1
)
echo ✅ 项目编译成功

REM 启动应用
echo [4/4] 启动应用...
echo.
echo 🚀 应用正在启动...
echo 📍 访问地址: http://localhost:8080
echo ⏹️  停止应用: 按 Ctrl+C
echo.
echo ========================================
echo 正在启动，请稍候...
echo ========================================

call mvnw.cmd spring-boot:run

echo.
echo 应用已停止
pause 