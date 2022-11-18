
require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"



import "java.io.File"--导入File类



import "java.io.File"--导入File类




import "java.io.File"--导入File类
aa=tostring( File("/storage/emulated/0/storage/emulated/0/YiQQ/md5.sql").length())



--print(aa)


if aa > "0" then


  activity.newActivity("tts2",{参数})


  activity.finish()


  --print("假")






 else
  --print("真")

  io.open("/storage/emulated/0/storage/emulated/0/YiQQ/md5.sql","w"):write("0"):close()



  activity.newActivity("main2",{参数})


  activity.finish()




end










