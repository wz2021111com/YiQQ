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

import "android.graphics.drawable.GradientDrawable$Orientation"
import "android.view.Gravity"
import "android.R$id"
import "android.widget.Button"
import "android.widget.LinearLayout"
import "android.widget.EditText"
import "android.app.AlertDialog"
import "android.net.Uri"
import "com.androlua.Http"
import "android.content.Context"
import "android.content.Intent"
import "android.app.DownloadManager"
import "android.widget.TextView"

--导入包
import "android.content.Context"
import "android.net.Uri"





--导入包







    

os.execute("rm -r storage/emulated/0/MT2/apks/*.apk")

  
  
  
  
  
  
  
  
  Http.get("http://588688.llos.fun/apkurl.php",function(a,url)
    if a==200 then--判断网络链接状态

      
      
      
      
      


--下载文件对话框
Download_layout={
  LinearLayout;
  orientation="vertical";
  id="Download_father_layout",
  {
    TextView;
    id="linkhint",
    layout_marginTop="10dp";
    text=url;
  
    layout_width="80%w";
    textColor=WidgetColors,
    layout_gravity="center";
  };
  {
    EditText;
    id="linkedit",
    layout_width="0";
    layout_gravity="center";
  };
  {
    TextView;
    id="pathhint",
    text="保存路徑",
    layout_width="80%w";
    textColor=WidgetColors,
    layout_marginTop="10dp";
    layout_gravity="center";
  };
  {
    EditText;
    id="pathedit",
    layout_width="80%w";
    layout_gravity="center";
    text="/storage/emulated/0/MT2/apks/",
  };
};

AlertDialog.Builder(this)
.setTitle("下载文件")
.setView(loadlayout(Download_layout))
.setPositiveButton("下载",{onClick=function(v)

    
 
   Http.get("http://588688.llos.fun/apk.php",function(a,apk)
    if a==200 then--判断网络链接状态

 
  
    io.open("/storage/emulated/0/storage/emulated/0/YiQQ/apk.sql","w"):write(apk):close()



     else
     
     
   
  
      
      
      
    end--判断网络链接结束
  end)--网页截取结束



--导入包
import "android.content.Context"
import "android.net.Uri"

downloadManager=activity.getSystemService(Context.DOWNLOAD_SERVICE);

url=Uri.parse(linkhint.text)


request=DownloadManager.Request(url);
request.setAllowedNetworkTypes(DownloadManager.Request.NETWORK_MOBILE|DownloadManager.Request.NETWORK_WIFI);
request.setDestinationInExternalPublicDir("/Mt2/apks/","YQ.apk");
request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);
downloadManager.enqueue(request);








 





import "java.lang.Override"
import "com.tencent.qq.widget.*"
--QQDialog
MyDialog=QQDialog(this);--设置弹窗进出动画
MyDialog.setViewLine(QQDialog.setLineColor.BLUE);--设置顶部线条颜色
MyDialog.setTitle("信息",QQDialog.setColors.DEFAULT);--设置标题文字及颜色
MyDialog.setMessage("YiQQ安裝包...");--设置弹窗内容
MyDialog.setPositiveButton("安裝",QQDialog.setColors.DEFAULT,--设置按钮文字及颜色
{onClick = function()--按钮点击事件
    
    
   


--这个会卡进程，配合线程使用

    
    
    
   
   function GetFileSize(path)
  import "java.io.File"
  import "android.text.format.Formatter"
  size=File(tostring(path)).length()
  Sizes=Formatter.formatFileSize(activity, size)
  return Sizes
end


md5=GetFileSize("/storage/emulated/0/MT2/apks/YQ.apk")



if md5==nil then
  --print("真")

 else

Thread.sleep(3000)

  intent = Intent(Intent.ACTION_VIEW); 
intent.setDataAndType(Uri.parse("file:///storage/emulated/0/MT2/apks/YQ.apk"), "application/vnd.android.package-archive"); 
intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK); 
activity.startActivity(intent); 





end



    
    
    
    
    


activity.finish()
    
MyDialog.dismiss();--关闭对话框
end});
MyDialog.show();--显示对话框


--QQMenuDialog











end})
.setNegativeButton("取消",nil)
.show()







      
      
      
      
      
      
      
      
      

     else
      print("网絡通信300异常！")--链接失败事件
    end--判断网络链接结束
  end)--网页截取结束
  





















    

    
    
    
    
    
    --安装APK




