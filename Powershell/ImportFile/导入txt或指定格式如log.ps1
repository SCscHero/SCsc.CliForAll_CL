$computers = Get-Content "C:\Users\shaoczha\OneDrive - Capgemini\LIST_Code\SCsc.CliForAll_CL\Powershell\ImportFile\scsc.txt"
echo $computers
# 前面的示例从 computers.txt 文件中检索计算机名称列表。 $computers 变量存储每台计算机的名称，你可以对其进行处理。 例如，可使用 ForEach 构造对列表中的每台计算机进行一些处理。 随时间的推移，根据计算机列表的变化，脚本会自动从 computers.txt 文件进行挑选。
# 可在 Get-Content 的路径中使用通配符，以便一次获得多个文件的数据。 对路径使用通配符时，可使用 -Include 和 -Exclude 参数修改所选文件。 使用 -Include 时，仅包含指定的模式。 使用 -Exclude 时，包含除指定模式之外的所有文件。 如果要扫描所有文本文件以查找特定内容（例如日志文件中的错误），使用通配符会很有用。


# 使用 -Include 的语法：
Get-Content -Path "C:\Scripts\*" -Include "*.txt","*.log"

Get-Content C:\Scripts\computers.txt -TotalCount 10