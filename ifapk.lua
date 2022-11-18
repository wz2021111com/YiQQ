require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"


--另一种Java方法
import "java.io.FileOutputStream"
import "java.util.zip.ZipFile"
import "java.io.File"

--使用File类
import "java.io.File"--导入File类

import "android.widget.LinearLayout"
import "com.androlua.ZipUtil"
import "com.androlua.util.ZipUtil"
import "android.content.Intent"
import "android.net.Uri"
import "android.app.DownloadManager"
import "android.content.Context"
import "android.widget.LinearLayout"
import "android.widget.TextView"
import "com.androlua.Http"


--导入包
import "android.content.Context"
import "android.net.Uri"





--导入包










 






body=io.open("/storage/emulated/0/storage/emulated/0/YiQQ/apk.sql"):read("*a")




Http.get("http://588688.llos.fun/apk.php",function(a,apk)
    if body==apk then--判断网络链接状态

 





dialog= ProgressDialog.show(this,nil, "当前已是最新版本...",false, true).hide()
dialog.show()

--2秒后关闭加载框
task(3000,function()
  dialog.dismiss()
  
  
  
  activity.newActivity("main")
  
  
  
  
  
end)







     else
     
     
     
  
     
     
 function GetFileSize(path)
  import "java.io.File"
  import "android.text.format.Formatter"
  size=File(tostring(path)).length()
  Sizes=Formatter.formatFileSize(activity, size)
  return Sizes
end


md5=GetFileSize("/storage/emulated/0/storage/emulated/0/YiQQ/apk.sql")



if md5==nil then
  --print("真")

 else



  activity.newActivity("apk")



end



     
     activity.finish()
      
      end
      
      
      
      
      
      
      
     

      
      
      
      
      
      
      
      
    end)--判断网络链接结束
 


