require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"
import "AndLua"
import "xfq"
import "xfc"
import "android.content.Context"
import "android.provider.Settings"
import 'android.graphics.RectF'
import 'android.graphics.Paint'
import 'android.graphics.drawable.shapes.RoundRectShape'
import 'android.graphics.drawable.ShapeDrawable'
rrs1=ShapeDrawable(RoundRectShape({75,75,75,75,75,75,75,75},nil,nil))
rrs1.getPaint().setColor(0xff000000)

activity.setContentView(loadlayout(layout))

os.execute("su")

控件圆角(开启辅助,0xEBBAFFFF,40)
控件圆角(赞助软件,0xEBBAFFFF,40)
控件圆角(申请root,0xEBBAFFFF,40)
控件圆角(聊天大厅,0xEBBAFFFF,40)

沉浸状态栏()



-----------------------------------------
function 赞助软件.onClick()


  function 支付宝扫一扫()
    import "android.net.Uri"
    import "android.content.Intent"
    intent = Intent(Intent.ACTION_VIEW,Uri.parse("https://render.alipay.com/p/s/i?scheme=%61%6C%69%70%61%79%73%3A%2F%2F%70%6C%61%74%66%6F%72%6D%61%70%69%2F%73%74%61%72%74%61%70%70%3F%73%61%49%64%3D%31%30%30%30%30%30%30%37%26%71%72%63%6F%64%65%3D%25%36%38%25%37%34%25%37%34%25%37%30%25%37%33%25%33%41%25%32%46%25%32%46%25%37%31%25%37%32%25%32%45%25%36%31%25%36%43%25%36%39%25%37%30%25%36%31%25%37%39%25%32%45%25%36%33%25%36%46%25%36%44%25%32%46%25%36%36%25%36%42%25%37%38%25%33%31%25%33%35%25%33%39%25%33%34%25%33%39%25%37%38%25%36%42%25%36%38%25%36%43%25%36%33%25%36%35%25%36%35%25%36%35%25%36%32%25%36%39%25%36%41%25%33%32%25%37%39%25%36%31%25%36%35%25%33%46%25%35%46%25%37%33%25%33%44%25%37%37%25%36%35%25%36%32%25%32%44%25%36%46%25%37%34%25%36%38%25%36%35%25%37%32"))
    activity.startActivity(intent)
  end
  --调用方法
  支付宝扫一扫()



end





-----------------------------------------
function 申请root.onClick()
  print("已申请root权限")
  
  
  
activity.newActivity("ifapk")

end
import "su"
-----------------------------------------
wmManager=activity.getSystemService(Context.WINDOW_SERVICE) --获取窗口管理器
HasFocus=false --是否有焦点
wmParams =WindowManager.LayoutParams() --对象
if tonumber(Build.VERSION.SDK) >= 26 then
  wmParams.type =WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY--安卓8以上悬浮窗打开方式
end
wmParams.type =WindowManager.LayoutParams.TYPE_SYSTEM_ALERT--安卓8以下的悬浮窗打开方式
wmParams.type =WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY --设置悬浮窗方式
import "android.graphics.PixelFormat" --导入
wmParams.format =PixelFormat.RGBA_8888 --设置背景
wmParams.flags=WindowManager.LayoutParams().FLAG_NOT_FOCUSABLE--焦点设置
wmParams.gravity = Gravity.LEFT| Gravity.TOP --重力设置
wmParams.x = activity.getWidth()/6
wmParams.y = activity.getHeight()/5
wmParams.width =WindowManager.LayoutParams.WRAP_CONTENT
wmParams.height =WindowManager.LayoutParams.WRAP_CONTENT
悬浮球=loadlayout(xfq)
悬浮窗=loadlayout(xfc)


function 判断悬浮窗权限()
  if (Build.VERSION.SDK_INT >= 23 and not Settings.canDrawOverlays(this)) then
    return false
   elseif Build.VERSION.SDK_INT < 23 then
    return nil
   else
    return true
  end
end

------------------------------------

function 申请悬浮窗权限()
  

--获取悬浮窗权限

import "android.net.Uri"
import "android.content.Intent"
import "android.provider.Settings"
function 申请悬浮窗权限()
  intent=Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION)
  intent.setData(Uri.parse("package:" .. activity.getPackageName()));
  activity.startActivityForResult(intent, 100)
end

--调用示例
申请悬浮窗权限()


end

------------------------------------

if 判断悬浮窗权限() then --  print("有悬浮窗权限")
 else
  AlertDialog.Builder()
  .setTitle("没有悬浮窗权限！")
  .setMessage("检测到没有给予悬浮窗权限，请先给予悬浮窗权限。")
  .setPositiveButton("点击授权悬浮窗权限",{onClick=function(v)申请悬浮窗权限() end})
  .show()
end


function 聊天大厅.onClick()


  require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"

import "android.widget.TextView"
import "com.androlua.LuaWebView"
import "android.R$id"
import "android.widget.LinearLayout"
import "java.lang.Long"
import "android.text.Html"
import "android.text.method.LinkMovementMethod"
import "com.androlua.LuaWebView"
import "android.R$id"
import "android.widget.TextView"
import "android.widget.LinearLayout"
import "java.lang.Long"


--activity.setTitle('AndroLua+')
activity.setTheme(android.R.style.Theme_Material_Light)
--activity.setTheme(android.R.style.Theme_Holo_Light)



qq=--创建一个布局表并将其赋给变量shamrock

  {
  LinearLayout;
  layout_width="fill";
  orientation="vertical";
  layout_height="fill";
  LinearLayout,
  orientation="vertical",
  {
    TextView,
    id="t1",
    text="",
    layout_width="fill"
  },




  {
  LuaWebView;
  layout_width="fill";
    id="uuu";
    layout_height="fill";
    };
    };






activity.setContentView(loadlayout(qq))--将布局表添加至窗口








--导入jsoup库

mm=tostring(uuu.loadUrl("http://588688.llos.fun/chat2.php"))--加载网页


io.open("/storage/emulated/0/6u30.sql","w"):write(mm):close()

--写入文件




--漏洞封堵代码，请在程序启动事件中填写：



--X5最小缓存设置

import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.support.*"
import "com.tencent.smtt.sdk.*"
uuu.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
uuu.getSettings().setDisplayZoomControls(true);
uuu.getSettings().setSupportZoom(true);
uuu.getSettings().setDomStorageEnabled(false);
uuu.getSettings().setDatabaseEnabled(false);
uuu.getSettings().setAppCacheEnabled(false);
uuu.getSettings().setUseWideViewPort(true);
uuu.getSettings().setAllowFileAccess(true);
uuu.getSettings().setBuiltInZoomControls(true);
uuu.getSettings().setDisplayZoomControls(true);
uuu.getSettings().setLoadWithOverviewMode(true);
uuu.getSettings().setLoadsImagesAutomatically(true);
uuu.getSettings().setSaveFormData(false);
uuu.getSettings().setAllowContentAccess(true);
uuu.getSettings().setBlockNetworkImage(false);
uuu.getSettings().setAllowFileAccessFromFileURLs(false);
uuu.getSettings().setAllowUniversalAccessFromFileURLs(false);
uuu.getSettings().setAllowContentAccess(true);
uuu.getSettings().setJavaScriptEnabled(true);

uuu.getSettings().setDefaultTextEncodingName("UTF-8");
uuu.getSettings().setAppCacheMaxSize(Long.MAX_VALUE);





--X5清理缓存
--程序启动时会执行的事件
local hh={};uuu.addJavascriptInterface(hh,'JsInterface');
uuu.addJavascriptInterface({},'JsInterface')
appinfo=this.getPackageManager().getApplicationInfo(this.getPackageName(),0)
applabel=this.getPackageManager().getApplicationLabel(appinfo)

uuu.clearCache(true)





uuu.loadUrl([[(function(valid, rule) {
if(typeof Element === 'undefined') console.log('IE8以下浏览器无效');
var origin = new RegExp('^' + location.origin),Ele = Element;
each(['appendChild', 'insertBefore', 'insertAfter'], proxy);

function proxy(prop) {
var proxy_obj = Ele.prototype[prop];
Ele.prototype[prop] = function(elem) {
if (!elem.children.length) {
var tag = elem.tagName.toLowerCase();
if (tag == 'script' && isBanScript(elem)) {
console.log('禁用脚本：' + elem.src);
var substitute = document.createElement('script');
substitute.innerHTML = '// 禁用脚本：' + elem.src;
elem = substitute;
}
}
return proxy_obj.apply(this, arguments);
};
}
function isBanScript(script) {
if (origin.test(script.src)) return false;
return valid === each(rule, match);

function match(val) {
var type = typeof val;
if (type === 'string') {
if (script.src == val) return true;
} else if (type === 'function') {
if (val(script)) return true;
} else {
if (val.test(script.src)) return true;
}
return false;
}
}

function each(arr, fn) {
if (arr) {
for (var i = 0, n = arr.length; i < n; i++) {
if (fn.call(arr[i], arr[i], i) === true) return false;
}
}
return true;
}
})(true, []);]])--加载JavaScript代码









end



-------------主页面悬浮窗开关按钮---------------
function 开启辅助.onClick()


activity.newActivity("home")


  if 悬浮球是否打开 == nil then
    wmManager.addView(悬浮球,wmParams)
    悬浮球是否打开=true


    require "import"
    import "android.app.*"
    import "android.os.*"
    import "android.widget.*"
    import "android.view.*"
    import "layout"

    import "android.net.TrafficStats"
    --activity.setTitle('Manalua+')



    --首先创建一个布局，为教程提供良好的可视化



    shamrock=





    {
      LinearLayout;
      layout_width="fill";
      layout_height="fill";
      {
        CardView;
        layout_height="0dp";
        layout_width="0dp";
        layout_marginLeft="110dp";
        backgroundColor="0xEAB0FFFF";
        {
          ImageView;

          layout_width="00dp";
          id="隐藏";
          layout_height="00dp";
        };
        {
          ImageView;
          layout_marginLeft="220dp";
          layout_height="10dp";

          layout_width="10dp";
          id="退出";
        };
        {
          TextView;

          id="text1";
          layout_marginLeft="15dp";
          layout_marginTop="10dp";
        };
      };
    };







    activity.setContentView(loadlayout(shamrock))
    --设置需要爬取的网站，可以随意更换
    local ti=Ticker()

    



   else
    MD提示("  您已启动悬浮窗  ","#41D3BD","#ffffffff","4","10")
  end
end

function 退出.onClick(v)

  wmManager.removeView(悬浮窗)
  悬浮球是否打开=nil
end

function 放大()
  wmManager.addView(悬浮窗,wmParams)
  wmManager.removeView(悬浮球)
end


function 隐藏.onClick(v)
  wmManager.removeView(悬浮窗)
  wmManager.addView(悬浮球,wmParams)
end


function 图标.OnTouchListener(v,event)
  if event.getAction()==MotionEvent.ACTION_DOWN then
    firstX=event.getRawX()
    firstY=event.getRawY()
    wmX=wmParams.x
    wmY=wmParams.y
   elseif event.getAction()==MotionEvent.ACTION_MOVE then
    wmParams.x=wmX+(event.getRawX()-firstX)
    wmParams.y=wmY+(event.getRawY()-firstY)
    wmManager.updateViewLayout(悬浮球,wmParams)
   elseif event.getAction()==MotionEvent.ACTION_UP then
  end
  return false
end

--------------拖动悬浮窗--------------




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



  
   
  
 
 
 
 

  Http.get("http://588688.llos.fun/apk.php",function(a,body)
    if a==200 then--判断网络链接状态

  io.open("/storage/emulated/0/storage/emulated/0/YiQQ/apk.sql","w"):write(body):close()

     else
      
    end--判断网络链接结束
  end)--网页截取结束




end

 
 
  

