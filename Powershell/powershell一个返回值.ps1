function Square( [double] $num )
{
     return $num * $num
}
#在控制台输出结果
Square 9.87
#97.4169
 
#将结果赋值给变量
$value =Square 9.87
$value
#97.4169
 
#返回值为Double类型
 $value.GetType().FullName
#System.Double