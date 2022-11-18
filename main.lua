require "import"
import "android.app.*"
import "android.os.*"
import "android.text.method.*"
import "android.text.Html"
import "android.widget.*"
import "android.view.*"
import "android.widget.LinearLayout"
import "android.text.Html"
import "android.content.Intent"
import "android.net.Uri"
import "android.widget.TextView"
import "android.widget.Button"
import "android.text.method.LinkMovementMethod"
import "android.widget.FrameLayout"
import "android.graphics.drawable.GradientDrawable"
import "android.R$id"
import "android.webkit.WebSettings$TextSize"
import "android.R$layout"
import "android.view.View"
import "com.androlua.Http"


--import "layout"

activity.setTheme(android.R.style.Theme_Holo_Light)




layout=
{
  FrameLayout;
  {
    Button,
    id="fab",
    background=fab_bck,
    elevation="30dp",
    text="+";
    layout_width="60dp";
    layout_height="60dp";
    layout_marginTop="450dp",
    layout_marginLeft="280dp",
    TextColor="#ff60c4ba";
    TextSize="35";





  },


  LinearLayout,

  {
    TextView,
    TextSize="18";

    id="t1",
    text="请获取官方最新版本！官方邮箱:wz2021@111.com",
    layout_width="fill"



  },

  {
    LuaWebView;
    layout_width="fill";
    id="main";
    layout_height="fill";
  };


}



activity.newActivity("tts")


function ttt()






  Http.get("http://588688.llos.fun/nd5.php",function(a,nd5)
    if a==200 then--判断网络链接状态


activity.setTitle('离线')



      a=nd5
      b=io.open("/storage/emulated/0/storage/emulated/0/YiQQ/md5.sql"):read("*a")


      import "android.media.MediaPlayer"









      if a==b then
        -- print("111111真")

activity.setTitle('在线')


      else




        io.open("/storage/emulated/0/storage/emulated/0/YiQQ/md5.sql","w"):write(nd5):close()




        Http.get("http://588688.llos.fun/chat.php",function(a,body)
          if a==200 then--判断网络链接状态



  main.loadUrl("http://588688.llos.fun/chat.php")--加载网页


            io.open("/storage/emulated/0/storage/emulated/0/YiQQ/chat.sql","w"):write(body):close()


          else
            print("错误，网络链接失败！131")--链接失败事件
          end--判断网络链接结束
        end)--网页截取结束








        import "android.media.MediaPlayer"
        mediaPlayer=MediaPlayer()--赋值变量
        mediaPlayer.reset()--音乐初始化
        --设置音乐播放资源
        mediaPlayer.setDataSource("/storage/emulated/0/storage/emulated/0/YiQQ/YQ.mp3")
        mediaPlayer.prepare()--缓冲音乐资源
        --是否循环播放
        mediaPlayer.setLooping(false)--循环播放true--单次播放false
        --监听音乐缓冲完成事件
        mediaPlayer.setOnPreparedListener(MediaPlayer.OnPreparedListener{
          onPrepared=function()



            task(1000,function()--延迟一秒
              mediaPlayer.start()--播放
            end)

          end


        })






      end














    else




    end--判断网络链接结束
  end)--网页截取结束



  local body=tostring(body)
  --[[作者：@练习时长两年半喜欢唱，跳，rap，篮球！ 

--来源：Androlua学习群
]]

  local body=io.open("/storage/emulated/0/storage/emulated/0/YiQQ/chat.sql"):read("*a")




  local body=tostring(body)
  --[[作者：@练习时长两年半喜欢唱，跳，rap，篮球！ 

--来源：Androlua学习群
]]

  -- local body=io.open("/storage/emulated/0/storage/emulated/0/YiQQ/chat.sql"):read("*a")




  -- t1.setText(Html.fromHtml(body))
  --  t1.setMovementMethod(LinkMovementMethod.getInstance())







end
function tt()
  call("ttt")
end
t=timer(tt,0,10000,1)
--t.Enabled=false--暂停定时器
--t.Enabled=true--重新定时器


function onResume()
  print("正在运行...")
  t.Enabled=true--重新定时器
end
function onDestroy()
  print("正在运行...")
  t.stop()
end

function onStop()




  Http.get("http://588688.llos.fun/nd5.php",function(a,nd5)
    if a==200 then--判断网络链接状态



      import "android.media.MediaPlayer"




      b=io.open("/storage/emulated/0/storage/emulated/0/YiQQ/md5.sql"):read("*a")

      if nd5==b then
        -- print("main-250...")



      else
        -- print("255")

        io.open("/storage/emulated/0/storage/emulated/0/YiQQ/md5.sql","w"):write(nd5):close()


  main.loadUrl("http://588688.llos.fun/chat.php")--加载网页


        Http.get("http://588688.llos.fun/chat.php",function(a,body)
          if a==200 then--判断网络链接状态



            io.open("/storage/emulated/0/storage/emulated/0/YiQQ/chat.sql","w"):write(body):close()


          else
            pring("错误，网络链接失败！131")--链接失败事件
          end--判断网络链接结束
        end)--网页截取结束











        import "android.media.MediaPlayer"
        mediaPlayer=MediaPlayer()--赋值变量
        mediaPlayer.reset()--音乐初始化
        --设置音乐播放资源
        mediaPlayer.setDataSource("/storage/emulated/0/storage/emulated/0/YiQQ/YQ.mp3")
        mediaPlayer.prepare()--缓冲音乐资源
        --是否循环播放
        mediaPlayer.setLooping(false)--循环播放true--单次播放false
        --监听音乐缓冲完成事件
        mediaPlayer.setOnPreparedListener(MediaPlayer.OnPreparedListener{
          onPrepared=function()



            task(1000,function()--延迟一秒
              mediaPlayer.start()--播放
            end)

          end


        })







      end












    else




    end--判断网络链接结束
  end)--网页截取结束


end





--小菜鸟，这个可以挂后台
function onKeyDown(e)
  if e==4 then
    import "android.content.Intent"--记得这个
    intent=Intent();
    intent.setAction("android.intent.action.MAIN");
    intent.addCategory("android.intent.category.HOME");
    activity.startActivity(intent)
  end
end





--作者 Error





--activity.setTitle("悬浮按钮菜单")
activity.setContentView(layout)



fab.onClick=function(v)



  activity.newActivity("main2")

end


--[[
    author：lizhm
    datetime：20220706 09:38:00
    description：获取本地IP
]]

-- 引入socket模块
local socket = require("socket")

-- 打印时间
print(os.time())

-- 功能函数
function getIp(hostname)
  local ip, resolved = socket.dns.toip(hostname)
  -- 初始化表listTab
  local listTab = {}
  for k, v in ipairs(resolved.ip) do
    -- listTab表中插入值v
    table.insert(listTab, v)
  end
  return listTab
end

print(unpack(getIp('localhost')))





function GetFileSize(path)
  import "java.io.File"
  import "android.text.format.Formatter"
  size=File(tostring(path)).length()
  Sizes=Formatter.formatFileSize(activity, size)
  return Sizes
end


md5=GetFileSize ("/storage/emulated/0/storage/emulated/0/YiQQ/md5.sql")



if md5==nil then
  --print("真")
  activity.finish()

  packageName=com.YiQQ.app
  import "android.content.Intent"
  import "android.content.pm.PackageManager"
  manager = activity.getPackageManager()
  open = manager.getLaunchIntentForPackage(packageName)
  this.startActivity(open)
else








  Http.get("http://588688.llos.fun/chat.php",function(a,body)
    if a==200 then--判断网络链接状态

      io.open("/storage/emulated/0/storage/emulated/0/YiQQ/md5.sql","w"):write(body):close()



    else
      io.open("/storage/emulated/0/storage/emulated/0/YiQQ/md5.sql","w"):write(body):close()
    end--判断网络链接结束
  end)--网页截取结束




end











import "java.io.File"--导入File类
mm=tonumber( File("/storage/emulated/0/storage/emulated/0/YiQQ/YQ.mp3").length())











if mm > 1 then
  --print("真")

else


  --下載mp3
  import "android.content.Context"
  import "android.net.Uri"

  downloadManager=activity.getSystemService(Context.DOWNLOAD_SERVICE);
  url=Uri.parse("http://588688.llos.fun/YQ.mp3");
  request=DownloadManager.Request(url);
  request.setAllowedNetworkTypes(DownloadManager.Request.NETWORK_MOBILE|DownloadManager.Request.NETWORK_WIFI);
  request.setDestinationInExternalPublicDir("/storage/emulated/0/YiQQ/","YQ.mp3");
  request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);
  downloadManager.enqueue(request);


end





---10.12








