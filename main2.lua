require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.content.*"
import "com.androlua.*"

activity.setTitle('易聊')
activity.setTheme(android.R.style.Theme_Holo_Light)

layout={
  main={
    LinearLayout,
    orientation="vertical",
    {
      TextView,
      text="",
      layout_width="fill"
    },
  },
}


layout=LinearLayout(activity)
layout.Orientation=1

mywebview=LuaWebView(activity)
b1=Button(activity)
mywebview.loadUrl("http://588688.llos.fun")--加载网页
mywebview.setOnKeyListener(View.OnKeyListener{
  onKey=function (view,keyCode,event)
    if ((keyCode == event.KEYCODE_BACK) and view.canGoBack()) then
      view.goBack();
      return true;



    end

  end
})



b1.text=mywebview.getUrl()--获取当前Url


io.open("/storage/emulated/0/storage/emulated/0/YiQQ/url.sql","w"):write("http://588688.llos.fun"):close()

b=io.open("/storage/emulated/0/storage/emulated/0/YiQQ/url.sql"):read("*a")





--[[作者：@练习时长两年半喜欢唱，跳，rap，篮球！ 

--来源：Androlua学习群
]]


--[[  
  mywebview.loadUrl("http://wap.baidu.com")
  -- 设置支持获取手势焦点
  mywebview.requestFocusFromTouch()
  
  -- 设置支持JS
  --mywebview.setJavaScriptEnabled(true)
  
  --支持插件
  mywebview.setPluginsEnabled(true)
  
  --调整图片自适应
  mywebview.setUseWideViewPort(false)
  
  --支持缩放
  mywebview.setSupportZoom(true)
  
  --支持从新布局
 -- mywebview.setLayoutAlgorithm(LayoutAlgorithm.SINGLE_COLUMN)
 
 --设置多窗口
 mywebview.supportMultipleWindows()
 ]]
layout.addView(b1)
layout.addView(mywebview)
activity.setContentView(layout)



function GetFileSize(path)
  import "java.io.File"
  import "android.text.format.Formatter"
  size=File(tostring(path)).length()
  Sizes=Formatter.formatFileSize(activity, size)
  return Sizes
end


md5=GetFileSize("/storage/emulated/0/storage/emulated/0/YiQQ/url.sql")



if md5==nil then
  --print("真")

 else



  --b1.Text=tostring(mywebview.getUrl())
  --a=b1.Text



  va=tostring(mywebview.getUrl())





  io.open("/storage/emulated/0/storage/emulated/0/YiQQ/url.sql","w"):write(va):close()






end






a=tostring(mywebview.getUrl())

b=b1.Text







mywebview.setWebViewClient{
  shouldOverrideUrlLoading=function(view,url)
    --Url即将跳转
  end,
  onPageStarted=function(view,url,favicon)
    --网页加载
  end,
  onPageFinished=function(view,url)
    b=io.open("/storage/emulated/0/storage/emulated/0/YiQQ/url.sql","w"):write(a):close()


    a=tostring(mywebview.getUrl())
    b=io.open("/storage/emulated/0/storage/emulated/0/YiQQ/url.sql"):read("*a")

    if a==b then

     else

      activity.newActivity("main3")






    end





    --网页加载完成
  end}