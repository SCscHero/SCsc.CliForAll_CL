# Demo Source
# https://learn.microsoft.com/zh-cn/training/modules/import-data-different-formats-for-use-scripts/5-use-convertfrom-json-cmdlet-scripts

# JavaScript 对象表示法 (JSON) 是一种类似于 XML 的轻型数据格式，因为它可以表示多层数据。 与 XML 相比，JSON 是一种轻型的数据交换格式，因为它的语法更简单。
# Windows PowerShell 不包括直接从文件导入或导出 JSON 数据的 cmdlet。 相反，如果将 JSON 数据存储在文件中，则可以使用 Get-Content 检索数据，然后使用 ConvertFrom-Json cmdlet 转换数据。
# ConvertFrom-Json cmdlet 使用以下语法：
$users = Get-Content C:\Scripts\Users.json | ConvertFrom-Json
# Invoke-RestMethod
# 查询 Web 服务时，通常使用 JSON 格式提供数据。 可以使用 Invoke-RestMethod 直接从 Web 服务查询数据。 Invoke-RestMethod 向指定的 URL 发送请求并从响应中获取数据。 JSON 格式的检索数据将自动转换为对象。 无需使用 ConvertFrom-Json。
# Invoke-RestMethod cmdlet 使用以下语法：
$users = Invoke-RestMethod "https://hr.adatum.com/api/staff"
# 用于从 Web 服务检索数据的 URL 未标准化。 必须查看文档，才能让 Web 服务确定要检索数据的正确 URL。
# Invoke-RestMethod 还能够处理 XML、RSS 源和 ATOM 源。