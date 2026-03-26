# 使用自带 Nginx 和 PHP 7.4 的高集成镜像
FROM webdevops/php-nginx:7.4

# 配置环境变量
ENV WEB_DOCUMENT_ROOT=/app
ENV PHP_DATE_TIMEZONE=Asia/Shanghai
ENV PHP_DISPLAY_ERRORS=0

# 将当前仓库的所有代码复制到容器的 /app 目录下
COPY . /app

# 给代码目录赋予权限，易支付需要写缓存和配置文件
# (webdevops 镜像默认的运行用户是 application)
RUN chown -R application:application /app && chmod -R 777 /app