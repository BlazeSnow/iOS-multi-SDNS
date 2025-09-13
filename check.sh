#!/bin/bash

PROFILE="$FILE"

echo "开始检查配置文件"

# XML格式检查
xmllint --noout "$PROFILE" && echo "XML格式检查完毕" || exit 1

# Plist格式检查
plutil -lint "$PROFILE" && echo "Plist格式检查完毕" || exit 1

echo "检查完毕"
