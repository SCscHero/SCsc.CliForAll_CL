$SCsc_BaseCodePath = "C:\LIST.CODE\"
$SCsc_UFQIPSPath = $SCsc_BaseCodePath+"Ink\UFQI.NetCore3.1\"
$SCsc_Vue3BlogPath = $SCsc_BaseCodePath+"UFQI-Vue3Blog"
$SCsc_VBAPath = $SCsc_BaseCodePath+"UFQI-VBA"
$SCsc_tampermonkeyPath = $SCsc_BaseCodePath+"tampermonkey"
$SCsc_DotNet_NewTemplateDemo_CLPath = $SCsc_BaseCodePath+"UFQI-DotNet_NewTemplateDemo_CL"
$SCsc_CliForAll_CLPath = $SCsc_BaseCodePath+"UFQI-CliForAll_CL"
$SCsc_WebPath = $SCsc_BaseCodePath+"UFQI-Web"


cd $SCsc_Vue3BlogPath
$SCsc_Vue3BlogBranch = git symbolic-ref --short -q HEAD
cd $SCsc_VBAPath
$SCsc_VBABranch = git symbolic-ref --short -q HEAD
cd $SCsc_tampermonkeyPath
$SCsc_tampermonkeyBranch = git symbolic-ref --short -q HEAD
cd $SCsc_DotNet_NewTemplateDemo_CLPath
$SCsc_DotNet_NewTemplateDemo_CLBranch = git symbolic-ref --short -q HEAD
cd $SCsc_CliForAll_CLPath
$SCsc_CliForAll_CLBranch = git symbolic-ref --short -q HEAD
cd $SCsc_WebPath
$SCsc_WebBranch = git symbolic-ref --short -q HEAD


echo "Vue3Blog-API分支为：$SCsc_Vue3BlogBranch"
echo "VBA-API分支为：$SCsc_VBABranch"
echo "tampermonkey分支为：$SCsc_tampermonkeyBranch"
echo "DotNet_NewTemplateDemo_CL-API分支为：$SCsc_DotNet_NewTemplateDemo_CLBranch"
echo "CliForAll_CL-API分支为：$SCsc_CliForAll_CLBranch"
echo "Web分支为：$SCsc_WebBranch"


cd $SCsc_UFQIPSPath