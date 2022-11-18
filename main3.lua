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
activity.setTitle('YiQQ')
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
    text="",
    layout_width="fill"



  },



}




function ttt()






  Http.get("http://588688.llos.fun/nd5.php",function(a,nd5)
    if a==200 then--判断网络链接状态
activity.finish()

packageName=com.YiQQ.app
import "android.content.Intent"
import "android.content.pm.PackageManager"
manager = activity.getPackageManager()
open = manager.getLaunchIntentForPackage(packageName)
this.startActivity(open)

     else

      io.open("/storage/emulated/0/storage/emulated/0/YiQQ/md5.sql","w"):write(nd5):close()



    end--判断网络链接结束
  end)--网页截取结束


 




end
function tt()
  call("ttt")
end
t=timer(tt,0,10000,1)
--t.Enabled=false--暂停定时器
--t.Enabled=true--重新定时器


function onResume()
  
  t.Enabled=true--重新定时器
end
function onDestroy()
  
  t.stop()
end

function onStop()
  
  t.Enabled=false
end








--作者 Error





--activity.setTitle("悬浮按钮菜单")
activity.setContentView(layout)



fab.onClick=function(v)



  activity.newActivity("main")

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











