参数=0
function onKeyDown(code,event) 
  if string.find(tostring(event),"KEYCODE_BACK") ~= nil then 
    if 参数+2 > tonumber(os.time()) then 
     ti.stop() activity.finish()
    else
    if Gj==0 then gjx.setVisibility(View.GONE) Gj=nil gduo=nil elseif gduo==0 then DialogExternal.setVisibility(View.GONE) gduo=nil else
     if (webView.canGoBack()) then
     网页后退() else
     Toast.makeText(activity,"再按一次返回键退出浏览器" , Toast.LENGTH_SHORT )
      .show()
      参数=tonumber(os.time()) 
      end
    end
    end
    return true 
  end
end
import "java.io.File"
File("/sdcard/Download/com.MyFusApp.zuolanqi/无图模式").createNewFile()
File("/sdcard/Download/com.MyFusApp.zuolanqi/夜间").createNewFile()
File("/sdcard/Download/com.MyFusApp.zuolanqi/浏览器标识").createNewFile()
File("/sdcard/Download/com.MyFusApp.zuolanqi/自定义UA").createNewFile()
File("/sdcard/Download/com.MyFusApp.zuolanqi/搜索引擎").createNewFile()
File("/sdcard/Download/com.MyFusApp.zuolanqi/隐身").createNewFile()
泡沫对话框(145)
.设置消息([[初始化完成]])
.设置积极按钮("确定",function()
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/夜间","w+"):write("关"):close()
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/搜索引擎","w+"):write("百度"):close()  
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/浏览器标识","w+"):write("默认"):close()
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/夜间","w+"):write("关"):close()
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/隐身","w+"):write("关"):close()
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/无图模式","w+"):write("关"):close()
end)
.显示()
wutu=io.open("/sdcard/Download/com.MyFusApp.zuolanqi/无图模式"):read("*a")
if wutu=="开" then
webView.getSettings().setLoadsImagesAutomatically(false)
end
llqbs=io.open("/sdcard/Download/com.MyFusApp.zuolanqi/浏览器标识"):read("*a")
if llqbs=="默认" then webView.getSettings().setUserAgentString("Mozilla/5.0 Dalvik/2 ( Linux; U; NEM-AL10 Build/HONORNEM-AL10;Youku;7.1.4;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Safari/537.36 (Baidu; P1 6.0) iPhone/7.1 Android/8.0 baiduboxapp/2.7.0.10");
elseif llqbs=="Chrome (PC)" then webView.getSettings().setUserAgentString("Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36");
elseif llqbs=="IE 11 (PC)" then webView.getSettings().setUserAgentString("Mozilla/5.0 (Windows NT 10.0; Trident/7.0; rv:11.0) like Gecko");
elseif llqbs=="iphone" then webView.getSettings().setUserAgentString("Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_0 like Mac OS X; en-us) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8A293 Safari/6531.22.7");
elseif llqbs=="塞班 (Symbian)" then webView.getSettings().setUserAgentString("Mozilla/5.0 (Symbian/3; Series60/5.2 NokiaN8-00/012.002; Profile/MIDP-2.1 Configuration/CLDC-1.1 ) AppleWebKit/533.4 (KHTML, like Gecko) NokiaBrowser/7.3.0 Mobile Safari/533.4 3gpp-gba");
elseif llqbs=="自定义" then ua=io.open("/sdcard/Download/com.MyFusApp.zuolanqi/自定义UA"):read("*a") webView.getSettings().setUserAgentString(ua);end
加载网页("file://"..this.luaDir.."/html/首页.html")
import"read"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "Dex.Pretend"
import"zw"
import "com.my.sc.*"
离线页面="/sdcard/Download/com.MyFusApp.zuolanqi/离线页面/"
picsave="/sdcard/Download/com.MyFusApp.zuolanqi/网页截图/"
File(离线页面).mkdirs()
File(picsave).mkdirs()
function 检查更新()
import 'RoundedDialog' 
packinfo=this.getPackageManager().getPackageInfo(this.getPackageName(),((32552732/2/2-8183)/10000-6-231)/9)
version=tostring(packinfo.versionName)
versioncode=tostring(packinfo.versionCode)
url="https://sharechain.qq.com/dc2f311c2b314a5edc35f3d9204964f7";
function 过滤(content)
  版本名=content:match("【版本名】(.-)【版本名】") 
  内容=content:match("【内容】(.-)【内容】") 
  if 版本名=="" then
    版本名="获取失败"
  end
  if(内容=="") then
    内容="获取失败"
  end
  if(版本名 > "2.8.3") then
    圆角对话框()
    .设置标题("检测到更新")
    .设置消息("版本：".."2.8.3".."→"..版本名.."\n更新内容："..内容)
    .设置圆角("32dp") --圆角大小
    .设置积极按钮("下载更新",function()
      url="https://raw.githubusercontent.com/donothavename/gx/master/qidong.lua"
Http.get(url,nil,"utf8",nil,function(code,content,cookie,header)
  if(code==200 and content)then con=content
    io.open(this.luaDir.."/qidong.lua","w+"):write(content):close()
    print"更新完成，重启失效"
    end
  end)
      弹出消息("更新中…")
    end)
    .设置消极按钮("暂不更新",function()
    end)
    .显示()
  else
    Toast.makeText(activity, "当前已是最新版本",Toast.LENGTH_SHORT).show()
  end
end
Http.get(url,nil,"UTF-8",nil,function(code,content,cookie,header)
  if(code==200 and content)then
    content=content:match("\"html_content\":(.-),"):gsub("\\u003C/?.-%>",""):gsub("\\\\","&revs;"):gsub("\\n","\n"):gsub("&nbsp;"," "):gsub("&lt;","<"):gsub("&gt;",">"):gsub("&quot;","\""):gsub("&apos;","'"):gsub("&revs;","\\"):gsub("&amp;","&");
    过滤(content)
  else
    Toast.makeText(activity,"本地网络或服务器异常 "..code, Toast.LENGTH_SHORT).show()
  end
end)
end
function 页面即将加载事件()
yj=io.open("/sdcard/Download/com.MyFusApp.zuolanqi/夜间"):read("*a")
if yj=="开" then 
task(1000,function()
加载Js([[javascript:(function(){var styleElem=null,doc=document,ie=doc.all,fontColor=50,sel="body,body *";styleElem=createCSS(sel,setStyle(fontColor),styleElem);function setStyle(fontColor){var colorArr=[fontColor,fontColor,fontColor];return"background-color:#000 !important;color:RGB("+colorArr.join("%,")+"%) !important;"}function createCSS(sel,decl,styleElem){var doc=document,h=doc.getElementsByTagName("head")[0],styleElem=styleElem;if(!styleElem){s=doc.createElement("style");s.setAttribute("type","text/css");styleElem=ie?doc.styleSheets[doc.styleSheets.length-1]:h.appendChild(s)}if(ie){styleElem.addRule(sel,decl)}else{styleElem.innerHTML="";styleElem.appendChild(doc.createTextNode(sel+" {"+decl+"}"))}return styleElem}})();]]) 
end)
color1 = 0xff000000; color2 = 0xffffffff; 
colorAnim = ObjectAnimator.ofInt(fltBtn,"backgroundColor",{color1,color1}) colorAnim.start()
sidebar.getBackground().setColorFilter(PorterDuffColorFilter(0xFF000000,PorterDuff.Mode.SRC_ATOP))
colorAnim = ObjectAnimator.ofInt(bmbackic,"ColorFilter",{color2,color2}) colorAnim.start()
colorAnim = ObjectAnimator.ofInt(bmforwardic,"ColorFilter",{color2,color2}) colorAnim.start()
colorAnim = ObjectAnimator.ofInt(bmhmic,"ColorFilter",{color2,color2}) colorAnim.start()
colorAnim = ObjectAnimator.ofInt(bmrefreshic,"ColorFilter",{color2,color2}) colorAnim.start()
colorAnim = ObjectAnimator.ofInt(gengduoic,"ColorFilter",{color2,color2}) colorAnim.start()
colorAnim = ObjectAnimator.ofInt(yincangic,"ColorFilter",{color2,color2}) colorAnim.start()
end
if 网页链接:find"https://" or 网页链接:find"file://" then
  aqic.setImageBitmap(loadbitmap("http://shp.qpic.cn/collector/2530648358/91fe7156-c36f-4529-a814-a61d1e999357/0"))
  else
  aqic.setImageBitmap(loadbitmap("http://shp.qpic.cn/collector/2530648358/559fc7b4-c6fc-48d0-b853-3c7cf6ff41a4/0"))
  end
设置底栏刷新状态(true,true,1000)
end
function 页面加载完毕()
设置底栏刷新状态(false,true,1000)
end
function search() 
sq=io.open("/sdcard/Download/com.MyFusApp.zuolanqi/搜索引擎"):read("*a")
InputLayout={
    LinearLayout;
    orientation="vertical";
    Focusable=true,
    FocusableInTouchMode=true,
    {
      TextView;
      id="Prompt",
      textSize="15sp",
      layout_marginTop="10dp";
      layout_marginLeft="3dp",
      layout_width="80%w";
      layout_gravity="center",
      text=sq.."搜索或输入网址...";
    };
    {
      EditText;
      hint="例如:a2三或http://www.yy.com或https://www.yy.com或www.yy.com";
      layout_marginTop="5dp";
      layout_width="80%w";
      layout_gravity="center",
      id="edit";
      text="";
    };
    {
    LinearLayout;
    orientation="horizontal";
    {
    Button;
    layout_width="20%w";
    background="";
    text="https://";
    onClick=function()edit.text=edit.text.."https://";end;
    };
    {
    Button;
    layout_width="14%w";
    background="";
    text="www.";
    onClick=function()edit.text=edit.text.."www.";end;
    };
    {
    Button;
    text="/";
    layout_width="14%w";
    background="";
    onClick=function()edit.text=edit.text.."/";end;
    };
    {
    Button;
    text=".";
    layout_width="12%w";
    background="";
    onClick=function()edit.text=edit.text..".";end;
    };
    {
    Button;
    layout_width="14%w";
    background="";
    text=".com";
    onClick=function()edit.text=edit.text..".com";end;
    };
    {
    Button;
    layout_width="14%w";
    background="";
    text=".cn";
    onClick=function()edit.text=edit.text..".cn";end;
    };
    };   
  };
  AlertDialog.Builder(this)
  .setTitle(webView.title)
  .setView(loadlayout(InputLayout))
  .setPositiveButton("确定",{onClick=function(v) 
  if edit.text:find"://" then pd=edit.text:match("(.+)://") 
      if pd=="http" or pd=="https" or pd=="ftp" then 加载网页(edit.text) 
      elseif pd:find"url=http" then 加载网页(edit.text)
      else
      if sq=="百度" then
      加载网页("https://m.baidu.com/s?from=1022560l&word="..edit.text)
      end
      if sq=="必应" then
      加载网页("https://www2.bing.com/search?q="..edit.text)
      end
      if sq=="神马" then
      加载网页("https://yz.m.sm.cn/s?from=wy923961&q="..edit.text) 
      end
      if sq=="好搜" then
      加载网页("https://m.so.com/s?q="..edit.text)
      end
      if sq=="搜狗" then
      加载网页("https://wap.sogou.com/web/sl?bid=sogou-mobb-ef77022c7b788c29&keyword="..edit.text)
      end
      if sq=="谷歌" then
      加载网页("https://www.google.com.hk/search?q="..edit.text)
      end
      end
      elseif edit.text:find"www." then pd=edit.text:match("(.+)www.") 
      if pd==nil then 加载网页("https://"..edit.text) 
      else
      if sq=="百度" then
      加载网页("https://m.baidu.com/s?from=1022560l&word="..edit.text)
      end
      if sq=="必应" then
      加载网页("https://www2.bing.com/search?q="..edit.text)
      end
      if sq=="神马" then
      加载网页("https://yz.m.sm.cn/s?from=wy923961&q="..edit.text) 
      end
      if sq=="好搜" then
      加载网页("https://m.so.com/s?q="..edit.text)
      end
      if sq=="搜狗" then
      加载网页("https://wap.sogou.com/web/searchList.jsp?uID=mUZm0CeNyg0fT48i&v=5&from=index&bid=sogou-mobb-19f59064291ed034&w=1274&t=1549868119771&s_t=1549868184944&s_from=index&pg=webSearchList&inter_index=1&keyword="..edit.text)
      end
      if sq=="谷歌" then
      加载网页("https://www.google.com.hk/search?q="..edit.text)
      end
      end
      else
      if sq=="百度" then
      加载网页("https://m.baidu.com/s?from=1022560l&word="..edit.text)
      end
      if sq=="必应" then
      加载网页("https://www2.bing.com/search?q="..edit.text)
      end
      if sq=="神马" then
      加载网页("https://yz.m.sm.cn/s?from=wy923961&q="..edit.text) 
      end
      if sq=="好搜" then
      加载网页("https://m.so.com/s?q="..edit.text)
      end
      if sq=="搜狗" then
      加载网页("https://wap.sogou.com/web/searchList.jsp?uID=mUZm0CeNyg0fT48i&v=5&from=index&bid=sogou-mobb-19f59064291ed034&w=1274&t=1549868119771&s_t=1549868184944&s_from=index&pg=webSearchList&inter_index=1&keyword="..edit.text)
      end
      if sq=="谷歌" then
      加载网页("https://www.google.com.hk/search?q="..edit.text)
      end 
    end 
  end})
  .setNegativeButton("取消",nil)
  .setNeutralButton("搜索引擎",{onClick=function(v) 
    items={}
table.insert(items,"百度")
table.insert(items,"必应")
table.insert(items,"神马")
table.insert(items,"好搜")
table.insert(items,"搜狗")
table.insert(items,"谷歌(需V)")
AlertDialog.Builder(this)
.setTitle("当前搜索引擎为"..sq)
.setItems(items,{onClick=function(l,v) 
if items[v+1]=="谷歌(需V)" then
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/搜索引擎","w+"):write("谷歌"):close() search()
elseif items[v+1]=="必应" then
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/搜索引擎","w+"):write("必应"):close() search()
elseif items[v+1]=="神马" then
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/搜索引擎","w+"):write("神马"):close() search()
elseif items[v+1]=="好搜" then
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/搜索引擎","w+"):write("好搜"):close() search()
elseif items[v+1]=="搜狗" then
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/搜索引擎","w+"):write("搜狗"):close() search()
elseif items[v+1]=="百度" then
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/搜索引擎","w+"):write("百度"):close() search()
  end
end})
.show()  
    end})
  .show()
  import "android.view.View$OnFocusChangeListener"
  edit.setOnFocusChangeListener(OnFocusChangeListener{ 
    onFocusChange=function(v,hasFocus)
      if hasFocus then
        Prompt.setTextColor(0xFD009688)
      end
    end})
end
检查更新()
安全={
  LinearLayout;
  orientation="horizontal";
  id="aqbar";
  Elevation="3dp";
  {
    LinearLayout;
    layout_width="9%w";
    layout_marginTop="50";
    layout_marginLeft="62";
    Elevation="3dp";
    layout_height="32dp";
    orientation="horizontal";
    backgroundColor=0x00000000;
    gravity="center|bottom";
    layout_gravity="center|bottom";
    id="aqbmwhole";
    {
      LinearLayout;
      id="aq";
      layout_width="19%w";
      layout_marginLeft="-8dp";
      orientation="vertical";
      gravity="center|left";
      layout_gravity="center|left";
      layout_height="fill";
      {
        ImageView;
        ColorFilter=0xFF5C5C5C;
        src=("http://shp.qpic.cn/collector/2530648358/91fe7156-c36f-4529-a814-a61d1e999357/0");
        layout_height="25dp";
        layout_marginTop="0dp";
        layout_width="30dp";
        layout_gravity="center";
        id="aqic";
        backgroundColor="";
      };
    };
  };
}
fltBtn.Parent.addView(loadlayout(安全))
aq.onClick=function()
  if 网页链接:find"http://" or 网页链接:find"ftp://" then
  对话框()
.设置标题(网页链接)
.设置消息("您与此网站之间建立的链接不安全\n请勿在此网站上输入任何敏感信息(例如密码或信用卡信息),因为攻击者可能会盗取这些信息")
.显示()
 elseif 网页链接:find"file://" then 
对话框()
.设置标题(网页链接)
.设置消息("你目前浏览的是此网页的离线副本")
.显示()
elseif 网页链接:find"https://" then
对话框()
.设置标题(网页链接)
.设置消息("链接是安全的\n您发送给这个网站的信息(例如密码或信用卡号)不会外泄")
.显示()
end
end
toolbar.onClick=function()
InputLayout={
    LinearLayout;
    orientation="vertical";
    Focusable=true,
    FocusableInTouchMode=true,
    {
      EditText;
      layout_marginTop="5dp";
      layout_width="80%w";
      layout_gravity="center",
      id="edit";
      text=网页链接;
    };   
  };
  AlertDialog.Builder(this)
  .setTitle(webView.title)
  .setView(loadlayout(InputLayout))
  .setPositiveButton("加载编辑",{onClick=function(v) 
  加载网页(edit.text) 
  end})
  .setNeutralButton("复制链接",{onClick=function(v) 
    复制文本(网页链接)print"链接已复制"
    end}) 
  .show()
end
yjhy=loadlayout{
LinearLayout;
orientation="vertical";
{
LinearLayout;
layout_marginTop="50";
{
TextView;
text="    ";
layout_weight="1.0"; 
};
{
 ImageView;                        
 layout_width="23dp",
 layout_height="23dp", 
 ColorFilter="#87C5C5C5",
 src=("http://shp.qpic.cn/collector/2530648358/4b24fec2-4d64-4709-9275-b3821165fbcf/0");
},
{
TextView;
id="kgsss";
textColor="#FF5C5C5C";
text="    夜间护眼               ";
textSize="14";--文本大小
layout_weight="1.0"; 
layout_width="fill";--宽度
layout_marginTop="fill";--边顶
};
{
Switch;
id="kg";
};
{
TextView;
textColor="#FF6C6C6C";
};
};
}
sidebar.addView(yjhy,0)
--开关绑定的工作
function 开关保存(kg,wj,k,j)
pref = this.getSharedPreferences("kg",0)
kg.setChecked(pref.getBoolean(wj,false))
if pref.getBoolean(wj,false) then
  loadstring(k)()
  else
 loadstring(j)()
  end
editor=activity.getSharedPreferences("kg",0).edit()
kg.setOnCheckedChangeListener{
  onCheckedChanged=function(g,c)
    if c then
    loadstring(k)()
    else 
    loadstring(j)()
    end
  end}
kg.onClick=function(v)
  editor.putBoolean(wj,v.isChecked())
  editor.commit()
  end
end
开关保存(kg,"a1",[[webView.addView(loadlayout{
    LinearLayout,
    id="overla",
    layout_width="fill",
    layout_height=32552732*6,
    orientation="vertical",
    backgroundColor="#86000000",
  })
toolbarParent.addView(loadlayout{
    LinearLayout,
    id="overlay",
    layout_width="fill",
    layout_height=32552732*6,
    orientation="vertical",
    backgroundColor="#86000000",
  })]],[[webView.removeView(overla)
toolbarParent.removeView(overlay)]])
ycgn=loadlayout{
LinearLayout;
layout_width="fill";
layout_height="5%h";
gravity="bottom";--center中间 bottom底部
orientation="horizontal" ;--vertical竖 horizontal横
{
Button;--钮扣
backgroundColor="#00000000";--背景色
layout_width="fill";--宽度
layout_marginTop="fill";--边顶
onClick=function()
  InputLayout={
    LinearLayout;
    orientation="vertical";
    Focusable=true,
    FocusableInTouchMode=true,
    {
      TextView;
      id="xxmm",
      textSize="15sp",
      layout_marginTop="10dp";
      layout_marginLeft="3dp",
      layout_width="80%w";
      layout_gravity="center",
      text="请输入密码";
    };
    {
      EditText;
      layout_marginTop="5dp";
      layout_width="80%w";
      layout_gravity="center",
      id="mima";
      text=" ";
    };
  };
  AlertDialog.Builder(this)
  .setTitle("请输入密码")
  .setView(loadlayout(InputLayout))
  .setPositiveButton("确定",{onClick=function(v) 
    if mima.text=="" then 进入子页面("xx") else print"密码错误" end  
    end})
  .setNegativeButton("取消",nil)
  .show()
  import "android.view.View$OnFocusChangeListener"
  mima.setOnFocusChangeListener(OnFocusChangeListener{ 
    onFocusChange=function(v,hasFocus)
      if hasFocus then
        xxmm.setTextColor(0xFD009688)
      end
    end})end
};}
sidebar.addView(ycgn,1)
url="https://m.tianqi.com/"
Http.get(url,nil,"utf8",nil,function(code,content,cookie,header)
  if(code==200 and content)then con=content
    cs=content:match("<text>(.-)</text>")
    wd=content:match('<span class="b2"><i></i>湿度(.-)</span')
    pz=content:match('class="b1"><i></i>(.-)</a>')
    fx=content:match('<span class="b3"><i></i>(.-)</span>')
    ds=content:match('<dd class="now">(.-)<i>')
    zk=content:match('<dd class="txt">(.-)</dd>')
    tu=content:match('<dt><img src="(.-)"></dt>')
    rq=content:match('<div class="date">(.-)</div>')
    gx=content:match('<text id="nowHour">(.-)</text>')
    mttq=content:match('<dd class="txt2">(.-)</dd>')
    mtqw=content:match('<dd class="txt2">(.-)</b>')
    mtqw2=mtqw:match('<b>(.+)')
    mtqw1=mtqw:match('"txt">(.-)<b')    
    help=("城市:"..cs.."\n今日天气:"..zk.."\n温度:"..ds.."\n湿度:"..wd.."\n风力:"..fx.."\n空气质量:"..pz)
    chltq=loadlayout{
      LinearLayout;
      orientation="vertical";
      layout_width="67%w";
      layout_height="25%h";
      background="#00000000";
      gravity="center";
     id="aaa";
      {
        LinearLayout;
        orientation="horizontal";
        layout_width="fill";
        layout_height="8%h";
        gravity="center";
        onClick=function()
pop=PopupMenu(activity,aaa) menu=pop.Menu
menu.add("查看天气详细信息").onMenuItemClick=function(a) 进入子页面("共用",{链接="https://m.tianqi.com/"})end
menu.add("复制天气信息").onMenuItemClick=function(a) 复制文本(help) print"已复制" end
menu.add("分享天气信息").onMenuItemClick=function(a) 分享文本(help) end pop.show()end;
        {LinearLayout;
          layout_gravity="center";
          {
            ImageView;
            scaleType="fitXY";
            id="wtricon";
            src=("https://m.tianqi.com/"..tu);
            layout_height="40dp";
            layout_width="40dp";
          };
        };
        {
          LinearLayout;
          layout_height="10%h";
          orientation="vertical";
          layout_width="30%w";
          layout_marginTop="25";
          {
            LinearLayout;
            orientation="vertical";
            layout_marginLeft="8dp";
            layout_gravity="center";
            {
              LinearLayout;
              orientation="horizontal";
              {
                TextView;
                textSize="30sp";
                text=(ds.."℃");
                textColor="#ff8e8e8e";
              };
            };
            {
              TextView;
              textSize="12sp";
              text=(zk);
              textColor="#ff8e8e8e";
              layout_marginTop="-5dp";
            };
          };
        };
      };
      {
        LinearLayout;
        layout_height="20%h";
        orientation="vertical";
        layout_width="fill";
        gravity="center";
        {
          TextView;
          text=("明日:"..mttq.." "..mtqw1..mtqw2.."℃");layout_marginLeft="5dp";textColor="#ff8e8e8e";
        };
        {
          TextView;
          text=("更新时间:"..gx);layout_marginLeft="5dp";textColor="#ff8e8e8e";
        };
        {
          TextView;
          text=("城市:"..cs);layout_marginLeft="5dp";textColor="#ff8e8e8e";
        };
        {
          TextView;
          text=("空气质量:"..pz);layout_marginLeft="5dp";textColor="#ff8e8e8e";
        };
        {
          TextView;
          text=("湿度:"..wd);layout_marginLeft="5dp";textColor="#ff8e8e8e";
        };
        {
          TextView;
          text=("风力:"..fx);layout_marginLeft="5dp";textColor="#ff8e8e8e";
        };
        {
          TextView;
          text=rq;layout_marginLeft="0dp";textColor="#ff8e8e8e";
        };
      };
    }
    sidebar.addView(chltq,1)
  end
end)
webView.addJavascriptInterface({},"JsInterface")
ll=0 ti=Ticker()ti.Period=1000 ti.onTick=function()ll=ll+1tt=os.date("时间:%H:%M:%S") if ll==3600 then 对话框().设置标题("温馨提醒").设置消息("您已浏览网页一小时,该休息一下了").设置积极按钮("好的",function()退出程序()end).设置消极按钮("继续浏览网页").显示()end 设置顶栏标题("      "..tt.." "..webView.title)end ti.start()
--开头提示
泡沫对话框(1).设置标题("提示").设置消息([[安装X5内核可全屏播放视频,还有悬浮按钮可以移动呦!]]).设置积极按钮("确定",function()进入子页面("X5")end).设置消极按钮("取消").显示()
--
gd={
LinearLayout,
    background="#99000000",
    layout_width="fill",
    layout_height="match_parent",
    Gravity="bottom",
    id="DialogExternal",
    {
      LinearLayout,
      layout_height="35%h",
      layout_width="match_parent",
      orientation="vertical",
      id="DialogInternal",
      layout_weight="1.0",
      {
        LinearLayout;
        orientation="vertical";
        {
          LinearLayout;
          layout_width="-1";
          {
            TextView;
            layout_width="50%w",
            id="c1";
          };
          {
            TextView;
            layout_width="50%w",
            id="c2";
          };
          {
            TextView,
            id="hg1",
          },
        };
        {
          PageView;
          id="滑动窗口";
          layout_height="-2";
          layout_width="-1";
          layout_weight="1.0";
          layout_marginLeft="2%w";
          layout_marginRight="2%w";
          layout_marginBottom="13%w";
          pages={
            {
              CardView;
              id="k1";              
              layout_height="match_parent";
              radius="15dp"; --圆角角度
              elevation="0dp";
              {
                LinearLayout,
                layout_height="match_parent",
                layout_width="match_parent",
                orientation="vertical",
                {
                  LinearLayout,
                  layout_height="wrap_content",
                  layout_width="match_parent",
                  orientation="horizontal",
                  layout_weight="1.0",
                  {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    {
                      LinearLayout,
                      layout_height="wrap_content",
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp", 
                        id="night",
                        ColorFilter="#2237FF2E",
                        style="?android:attr/buttonBarButtonStyle";
                        src=("http://shp.qpic.cn/collector/2530648358/80bac51b-113b-452d-9b22-d137321bb4fe/0");
                      },
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      text="夜间",
                      textColor="#ff000000",
                      gravity="center",
                    },
                  },
                  {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    {
                      LinearLayout,
                      layout_height="wrap_content",
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        src=("http://shp.qpic.cn/collector/2530648358/5ff8acf6-66ff-4f50-98c3-90eb5c65f826/0");
                        ColorFilter="#ffaba4e9",
                        style="?android:attr/buttonBarButtonStyle";
                        id="mybook";
                      },
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="书签",
                      textColor="#ff000000",
                    },
                  },
                  {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    {
                      LinearLayout,
                      layout_height="wrap_content",
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        src=("http://shp.qpic.cn/collector/2530648358/47f1e34c-0b2c-46ef-b65a-c0be7d71e60c/0");
                        ColorFilter="#FFFFF045",
                        style="?android:attr/buttonBarButtonStyle";
                        id="history",
                      },
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="历史",
                      textColor="#ff000000",
                    },
                  },
                {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    {
                      LinearLayout,
                      layout_height="wrap_content",
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        src=("http://shp.qpic.cn/collector/2530648358/7af98cee-0da1-4bef-9e3e-01c3d418974d/0");
                        ColorFilter="#FF42F9E3",
                        id="xiazai",
                        style="?android:attr/buttonBarButtonStyle";
                      },
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="下载",
                      textColor="#ff000000",
                    },
                  },
                },
                {
                  LinearLayout,
                  layout_width="match_parent",
                  orientation="horizontal",
                  layout_weight="1.0",
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center_horizontal",
                    {
                      LinearLayout,
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        src=("http://shp.qpic.cn/collector/2530648358/3807ce4c-5ea4-4383-871b-df3c300ce146/0");
                        ColorFilter="#FF009AFF",
                        style="?android:attr/buttonBarButtonStyle";
                        id="yinshen",
                      },
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="隐身",
                      textColor="#ff000000",
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center_horizontal",
                    {
                      LinearLayout,
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        style="?android:attr/buttonBarButtonStyle";
                        src=("http://shp.qpic.cn/collector/2530648358/83fdbc58-9c2d-4975-a02a-94ff4bdd8a5c/0");
                        ColorFilter="#FF009AFF",
                        id="share";
                      },
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="分享",
                      textColor="#ff000000",
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center_horizontal",
                    {
                      LinearLayout,
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        style="?android:attr/buttonBarButtonStyle";
                        src=("http://shp.qpic.cn/collector/2530648358/d073c870-7357-4ae8-b3d2-6fa69edac3eb/0");
                        ColorFilter="#FF009AFF",
                        id="addbook";
                      },
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="添加书签",
                      textColor="#ff000000",
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center_horizontal",
                    {
                      LinearLayout,
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        style="?android:attr/buttonBarButtonStyle";
                        src=("http://shp.qpic.cn/collector/2530648358/d5b68401-0695-421d-a3f8-525d0c3f926d/0");
                        ColorFilter="#FF009AFF",
                        id="gj";
                      },
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="工具箱",
                      textColor="#ff000000",
                    },
                  },                  
                },
                {
                  LinearLayout,
                  layout_width="match_parent",
                  orientation="horizontal",
                  layout_weight="1.0",                 
                {
                  LinearLayout,
                  layout_width="wrap_content",
                  orientation="vertical",
                  layout_weight="1.0",
                  gravity="center_horizontal",
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    {
                      ImageView;
                      layout_width="35dp",
                      layout_height="35dp",
                      src=("http://shp.qpic.cn/collector/2530648358/c45ff7b4-fb38-495b-bf7e-5271ea7603c5/0");
                      ColorFilter="#80000000",
                      style="?android:attr/buttonBarButtonStyle";
                      id="tuichu";
                      },                                                             
                    },
                  },
                  {
                  LinearLayout,
                  layout_width="wrap_content",
                  orientation="vertical",
                  layout_weight="1.0",
                  gravity="center_horizontal",
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    {
                      ImageView;
                      layout_width="35dp",
                      layout_height="35dp",
                      src=("http://shp.qpic.cn/collector/2530648358/b61c6a0e-98db-4a8a-ac6a-1c8cbc154a95/0");
                      ColorFilter="#80000000",
                      style="?android:attr/buttonBarButtonStyle";
                      id="gdyc";
                      },                                                                                                
                    },
                  }, 
                },
              },
            };          
          };
        },
      },
    },
  }
--底下导航栏
底栏布局={
  LinearLayout;
  orientation="horizontal";
  layout_width="-1";
  layout_height="-1";
  gravity="bottom";
  id="fakebmbar";
  Elevation="3dp";
  {
    LinearLayout;
    layout_width="fill";
    Elevation="3dp";
    layout_height="7%h";
    orientation="horizontal";
    backgroundColor=0x00000000;
    gravity="center|bottom";
    layout_gravity="center|bottom";
    id="bmwhole";
    {
      LinearLayout;
      id="bmback";
      layout_width="19%w";
      layout_marginLeft="0dp";
      orientation="vertical";
      gravity="center|left";
      layout_gravity="center|left";
      layout_height="fill";
      {
        ImageView;--影像视图
        ColorFilter=0xff000000;
        src=("http://shp.qpic.cn/collector/2530648358/6ce8ce2c-f0ac-4c11-b6c1-2c7daf86ac60/0");
        layout_height="25dp";--高度
        layout_marginTop="0dp";--边顶
        layout_width="30dp";--宽度
        layout_gravity="center";
        id="bmbackic";
        backgroundColor="#00000000";--背景色
      };
    };
    {
      LinearLayout;
      id="bmforward";
      layout_width="19%w";
      layout_height="fill";
      layout_marginLeft="0dp";
      orientation="vertical";
      gravity="center|left";
      layout_gravity="center|left";
      {
        ImageView;--影像视图
        ColorFilter=0xff000000;
        src=("http://shp.qpic.cn/collector/2530648358/3cd13a75-c2f6-414c-8787-66ec93a08fe3/0");
        layout_height="25dp";--高度
        layout_marginTop="0dp";--边顶
        layout_width="30dp";--宽度
        layout_gravity="center";
        id="bmforwardic";
        backgroundColor="#00000000";--背景色
      };
    };
    {
      LinearLayout;
      id="bmhome";
      layout_width="19%w";
      layout_marginLeft="0dp";
      orientation="vertical";
      gravity="center|right";
      layout_gravity="center|right";
      layout_height="fill";
      {
        ImageView;--影像视图
        src=("http://shp.qpic.cn/collector/2530648358/bb695541-0c88-4195-af4d-2fb67e2915a0/0");
        ColorFilter=0xff000000;
        layout_height="25dp";--高度
        layout_marginTop="0dp";--边顶
        layout_width="30dp";--宽度
        layout_gravity="center";
        id="bmhmic";
        backgroundColor="#00000000";--背景色
      };
    };
    {
      LinearLayout;
      id="bmrefresh";
      layout_width="19%w";
      layout_marginLeft="0dp";
      orientation="vertical";
      gravity="center|right";
      layout_gravity="center|right";
      layout_height="fill";
      {
        ImageView;--影像视图
        layout_height="25dp";--高度
        ColorFilter=0xff000000;
        layout_marginTop="0dp";--边顶
        layout_width="30dp";--宽度
        id="bmrefreshic";
        layout_gravity="center";
        backgroundColor="#00000000";--背景色
      };
    };
    {
      LinearLayout;
      id="gengduo";
      layout_width="19%w";
      layout_marginLeft="0dp";
      orientation="vertical";
      gravity="center|left";
      layout_gravity="center|left";
      layout_height="fill";
      {
        ImageView;--影像视图
        ColorFilter=0xff000000;
        src=("http://shp.qpic.cn/collector/2530648358/8fa2da48-d85d-4993-b34d-f696b4d8e51f/0");
        layout_height="25dp";--高度
        layout_marginTop="0dp";--边顶
        layout_width="30dp";--宽度
        layout_gravity="center";
        id="gengduoic";
        backgroundColor="#00000000";--背景色
      };
    };
    {
      LinearLayout;
      id="yincang";
      layout_width="5%w";
      layout_marginLeft="0dp";
      orientation="vertical";
      gravity="center|left";
      layout_gravity="center|left";
      layout_height="fill";
      {
        ImageView;--影像视图
        ColorFilter=0xff000000;
        src=("http://shp.qpic.cn/collector/2530648358/b61c6a0e-98db-4a8a-ac6a-1c8cbc154a95/0");
        layout_height="25dp";--高度
        layout_marginTop="0dp";--边顶
        layout_width="15dp";--宽度
        layout_gravity="center";
        id="yincangic";
        backgroundColor="#00000000";--背景色
      };
    };
  };
}
fltBtn.Parent.addView(loadlayout(底栏布局))
function 波纹(id,颜色)
  import "android.content.res.ColorStateList"
  local attrsArray = {android.R.attr.selectableItemBackgroundBorderless} 
  local typedArray =activity.obtainStyledAttributes(attrsArray) 
  ripple=typedArray.getResourceId(0,0) 
  Pretend=activity.Resources.getDrawable(ripple) 
  Pretend.setColor(ColorStateList(int[0].class{int{}},int{颜色}))
  id.setBackground(Pretend.setColor(ColorStateList(int[0].class{int{}},int{颜色})))
end
波纹(bmback,0xFFE2E2E2)
波纹(bmforward,0xFFE2E2E2)
波纹(bmhome,0xFFE2E2E2)
波纹(gengduo,0xFFE2E2E2)
波纹(bmrefresh,0xFFE2E2E2)
波纹(yincang,0xFFE2E2E2)
--注意！还有一些东西写在了网页加载事件和加载完毕事件
bmback.onClick=function()if(webView.canGoBack())then 网页后退()else 弹出消息("没有网页可以后退哦")end end
bmforward.onClick=function()if(webView.canGoForward())then 网页前进()else 弹出消息("没有网页可以前进哦")end end
bmhome.onClick=function()
while(true) do 网页后退()if not(webView.canGoBack()) then break end end end
--bmrefresh.onClick=function() 刷新网页()end
gengduo.onClick=function() if GJX==0 then fltBtn.Parent.addView(loadlayout(gd)) GJX=nil gduo=0 elseif Gj==0 then gjx.setVisibility(View.GONE) Gj=nil gduo=nil elseif gduo==nil then fltBtn.Parent.addView(loadlayout(gd)) gduo=0 else DialogExternal.setVisibility(View.GONE) gduo=nil end
addbook.onClick=function() addDataDialog("Collection","加入书签",webView.getTitle(),webView.getUrl()) DialogExternal.setVisibility(View.GONE) gduo=nil end
mybook.onClick=function() showDataDialog("Collection","书签") DialogExternal.setVisibility(View.GONE) gduo=nil end
yinshen.onClick=function() gduo=nil DialogExternal.setVisibility(View.GONE) ys=io.open("/sdcard/Download/com.MyFusApp.zuolanqi/隐身"):read("*a") if ys=="开" then io.open("/sdcard/Download/com.MyFusApp.zuolanqi/隐身","w+"):write("关"):close() print("退出隐身浏览") else io.open("/sdcard/Download/com.MyFusApp.zuolanqi/隐身","w+"):write("开"):close() print("已进入隐身浏览") end end
gdyc.onClick=function() DialogExternal.setVisibility(View.GONE) gduo=nil end
tuichu.onClick=function()  ti.stop() 退出程序()end
share.onClick=function() 分享文本(webView.getUrl()) DialogExternal.setVisibility(View.GONE) gduo=nil end
xiazai.onClick=function() if pcall(function() activity.getPackageManager().getPackageInfo("com.dv.adm.pay",0) end) then packageName="com.dv.adm.pay" import "android.content.Intent" import "android.content.pm.PackageManager" manager = activity.getPackageManager() open = manager.getLaunchIntentForPackage(packageName) this.startActivity(open)
else print("你似乎没有安装ADM下载器") import "android.content.Intent" import "android.net.Uri" intent = Intent("android.intent.action.VIEW") intent .setData(Uri.parse( "market://details?id=com.dv.adm.pay")) this.startActivity(intent) end gduo=nil DialogExternal.setVisibility(View.GONE) end
night.onClick=function() gduo=nil color1 = 0xff000000; color2 = 0xffffffff; ys=io.open("/sdcard/Download/com.MyFusApp.zuolanqi/夜间"):read("*a")
if yj=="关" then io.open("/sdcard/Download/com.MyFusApp.zuolanqi/夜间","w+"):write("开"):close() print("夜间模式")刷新网页()
else io.open("/sdcard/Download/com.MyFusApp.zuolanqi/夜间","w+"):write("关"):close() print("白天模式") colorAnim = ObjectAnimator.ofInt(fltBtn,"backgroundColor",{color2,color2}) colorAnim.start()
sidebar.getBackground().setColorFilter(PorterDuffColorFilter(0xFFFFFFFF,PorterDuff.Mode.SRC_ATOP))
colorAnim = ObjectAnimator.ofInt(bmbackic,"ColorFilter",{color1,color1}) colorAnim.start()
colorAnim = ObjectAnimator.ofInt(bmforwardic,"ColorFilter",{color1,color1}) colorAnim.start()
colorAnim = ObjectAnimator.ofInt(bmhmic,"ColorFilter",{color1,color1}) colorAnim.start()
colorAnim = ObjectAnimator.ofInt(bmrefreshic,"ColorFilter",{color1,color1}) colorAnim.start()
colorAnim = ObjectAnimator.ofInt(gengduoic,"ColorFilter",{color1,color1}) colorAnim.start()
colorAnim = ObjectAnimator.ofInt(yincangic,"ColorFilter",{color1,color1}) colorAnim.start()
刷新网页() end
DialogExternal.setVisibility(View.GONE) end
history.onClick=function() DialogExternal.setVisibility(View.GONE) gduo=nil read_hst() show_hst() end
gj.onClick=function()
gjx={
LinearLayout,
    background="#99000000",
    layout_width="fill",
    layout_height="match_parent",
    Gravity="bottom",
    id="gjx",
    {
      LinearLayout,
      layout_height="45%h",
      layout_width="match_parent",
      orientation="vertical",
      id="gjx",
      layout_weight="1.0",
      {
        LinearLayout;
        orientation="vertical";
        {
          LinearLayout;
          layout_width="-1";
          {
            TextView;
            layout_width="50%w",
            id="c1";
          };
          {
            TextView;
            layout_width="50%w",
            id="c2";
          };
          {
            TextView,
            id="hg1",
          },
        };
        {
          PageView;
          id="滑动窗口";
          layout_height="-2";
          layout_width="-1";
          layout_weight="1.0";
          layout_marginLeft="2%w";
          layout_marginRight="2%w";
          layout_marginBottom="13%w";
          pages={
            {
              CardView;
              id="k1"; 
              layout_height="match_parent";
              radius="15dp"; --圆角角度
              elevation="0dp";
              {
                LinearLayout,
                layout_height="match_parent",
                layout_width="match_parent",
                orientation="vertical",
                {
                  LinearLayout,
                  layout_height="wrap_content",
                  layout_width="match_parent",
                  orientation="horizontal",
                  layout_weight="1.0",
                  {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    {
                      LinearLayout,
                      layout_height="wrap_content",
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp", 
                        id="yncz",
                        ColorFilter="#2237FF2E",
                        style="?android:attr/buttonBarButtonStyle";
                        src=("http://shp.qpic.cn/collector/2530648358/81343e52-4cef-4b2b-9ede-55174b5bfce3/0");
                      },
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      text="页内查找",
                      textColor="#ff000000",
                      gravity="center",
                    },
                  },
                  {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    {
                      LinearLayout,
                      layout_height="wrap_content",
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        src=("http://shp.qpic.cn/collector/2530648358/18c65ca3-532c-4634-a721-b5c208ed5453/0");
                        ColorFilter="#ffaba4e9",
                        style="?android:attr/buttonBarButtonStyle";
                        id="bcwy";
                      },
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="保存网页",
                      textColor="#ff000000",
                    },
                  },
                  {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    {
                      LinearLayout,
                      layout_height="wrap_content",
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        src=("http://shp.qpic.cn/collector/2530648358/c3959a70-df1e-4c4e-96be-8181865ed579/0");
                        ColorFilter="#FFAEF942",
                        style="?android:attr/buttonBarButtonStyle";
                        id="lxym";
                      },
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="离线页面",
                      textColor="#ff000000",
                    },
                  },
                  {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    {
                      LinearLayout,
                      layout_height="wrap_content",
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        src=("http://shp.qpic.cn/collector/2530648358/ddafc5cf-ca80-4805-957f-5d1257f228d6/0");
                        ColorFilter="#FFFFF045",
                        style="?android:attr/buttonBarButtonStyle";
                        id="fanyi",
                      },
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="网页翻译",
                      textColor="#ff000000",
                    },
                  },
                {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    {
                      LinearLayout,
                      layout_height="wrap_content",
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        src=("http://shp.qpic.cn/collector/2530648358/7b498aad-b12a-487b-813c-e75cc8f5e797/0");
                        ColorFilter="#FF42F9E3",
                        id="yuanma",
                        style="?android:attr/buttonBarButtonStyle";
                      },
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="源码",
                      textColor="#ff000000",
                    },
                  },                
                },
                {
                  LinearLayout,
                  layout_width="match_parent",
                  orientation="horizontal",
                  layout_weight="1.0",
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center_horizontal",
                    {
                      LinearLayout,
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        style="?android:attr/buttonBarButtonStyle";
                        src=("http://shp.qpic.cn/collector/2530648358/11202f6f-5ea7-4abc-b93f-3aea77761b88/0");
                        ColorFilter="#FF009AFF",
                        id="wtms";
                      },
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="无图模式",
                      textColor="#ff000000",
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center_horizontal",
                    {
                      LinearLayout,
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        src=("http://shp.qpic.cn/collector/2530648358/34fa8e82-36b2-4fea-9e58-4a691998e79d/0");
                        ColorFilter="#FF009AFF",
                        id="xiutan",
                        style="?android:attr/buttonBarButtonStyle";
                      },
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="资源嗅探",
                      textColor="#ff000000",                    
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center_horizontal",
                    {
                      LinearLayout,
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        src=("http://shp.qpic.cn/collector/2530648358/653f598b-87f4-4635-aff7-ba5922b7c27d/0");
                        ColorFilter="#FF009AFF",
                        style="?android:attr/buttonBarButtonStyle";
                        id="biaoshi",
                      },
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="浏览器标识",
                      textColor="#ff000000",
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center_horizontal",
                    {
                      LinearLayout,
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        style="?android:attr/buttonBarButtonStyle";
                        src=("http://shp.qpic.cn/collector/2530648358/2913dfca-deb5-4f5d-a0ba-6d3e7968fe42/0");
                        ColorFilter="#FF009AFF",
                        id="spjx";
                      },
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="视频解析",
                      textColor="#ff000000",
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center_horizontal",
                    {
                      LinearLayout,
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        style="?android:attr/buttonBarButtonStyle";
                        src=("http://shp.qpic.cn/collector/2530648358/d11f4511-1e57-4ef1-84a2-f7e0f2756504/0");
                        ColorFilter="#FF009AFF",
                        id="browser";
                      },
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="其他打开",
                      textColor="#ff000000",
                    },
                  },
                },
                {
                  LinearLayout,
                  layout_width="match_parent",
                  orientation="horizontal",
                  layout_weight="1.0",
                {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center_horizontal",
                    {
                      LinearLayout,
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        style="?android:attr/buttonBarButtonStyle";
                        src=("http://shp.qpic.cn/collector/2530648358/8fcde0f3-b2db-452e-a2b5-afe7f758be4f/0");
                        ColorFilter="#FF009AFF",
                        id="wyjt";
                      },
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="网页截图",
                      textColor="#ff000000",
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center_horizontal",
                    {
                      LinearLayout,
                      layout_width="wrap_content",
                      {
                        ImageView;
                        layout_width="35dp",
                        layout_height="35dp",
                        src=("http://shp.qpic.cn/collector/2530648358/c7a5a3d6-e79c-406c-97bc-3b8e450a2c87/0");
                        ColorFilter="#FF009AFF",
                        id="read",
                        style="?android:attr/buttonBarButtonStyle";
                      },
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="阅读模式",
                      textColor="#ff000000",                    
                    },
                  },
                },
                {
                  LinearLayout,
                  layout_width="match_parent",
                  orientation="horizontal",
                  layout_weight="1.0",                 
                {
                  LinearLayout,
                  layout_width="wrap_content",
                  orientation="vertical",
                  layout_weight="1.0",
                  gravity="center_horizontal",
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    {
                      ImageView;
                      layout_width="35dp",
                      layout_height="35dp",
                      src=("http://shp.qpic.cn/collector/2530648358/c45ff7b4-fb38-495b-bf7e-5271ea7603c5/0");
                      ColorFilter="#80000000",
                      style="?android:attr/buttonBarButtonStyle";
                      id="tuichu";
                      },                                                             
                    },
                  },
                  {
                  LinearLayout,
                  layout_width="wrap_content",
                  orientation="vertical",
                  layout_weight="1.0",
                  gravity="center_horizontal",
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    {
                      ImageView;
                      layout_width="35dp",
                      layout_height="35dp",
                      src=("http://shp.qpic.cn/collector/2530648358/b61c6a0e-98db-4a8a-ac6a-1c8cbc154a95/0");
                      ColorFilter="#80000000",
                      style="?android:attr/buttonBarButtonStyle";
                      id="gjxyc";
                      },                                                                                                
                    },
                  }, 
                },
              },
            };          
          };
        },
      },
    },
  }
Gj=0 xfb=nil DialogExternal.setVisibility(View.GONE) fltBtn.Parent.addView(loadlayout(gjx))
function gjx.onClick() gjx.setVisibility(View.GONE) GJX=0 Gj=nil end
yncz.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE)
  sr={
    LinearLayout;
    layout_width="-1";
    layout_height="85%h";
    gravity="bottom";
    id="sr";
    Elevation="3dp";
    orientation="vertical";
    Focusable=true,
    FocusableInTouchMode=true,
    {
    LinearLayout;
    layout_width="fill";
    Elevation="3dp";
    layout_height="7%h";
    orientation="horizontal";
    backgroundColor=0x7FFFFFFF;
    gravity="center|bottom";
    layout_gravity="center|bottom";
    id="srys";
    {
      EditText;
      hint="页内查找";
      hintTextColor=0xff000000;
      layout_marginTop="5dp";
      layout_width="80%w";
      layout_gravity="center",
      id="edit";
      text="";
    };
  };
};
ss={
  LinearLayout;
  orientation="horizontal";
  layout_width="-1";
  layout_height="92%h";
  gravity="bottom";
  id="ss";
  Elevation="3dp";
  {
    LinearLayout;
    layout_width="fill";
    Elevation="3dp";
    layout_height="7%h";
    orientation="horizontal";
    backgroundColor=0x7FFFFFFF;
    gravity="center|bottom";
    layout_gravity="center|bottom";
    id="ys";
    {
      LinearLayout;
      id="gb";
      layout_width="50%w";
      layout_marginLeft="0dp";
      orientation="vertical";
      gravity="center|left";
      layout_gravity="center|left";
      layout_height="fill";
      {
        TextView,
        layout_height="wrap_content",
        layout_width="50%w",
        text="关闭",
        textSize="17",
        textColor="#ff000000",
        gravity="center",
       },
    };
    {
      LinearLayout;
      id="xg";
      layout_width="50%w";
      layout_height="fill";
      layout_marginLeft="0dp";
      orientation="vertical";
      gravity="center|left";
      layout_gravity="center|left";
      {
        TextView,
        layout_height="wrap_content",
        layout_width="50%w",
        text="下个",
        textSize="17",
        textColor="#ff000000",
        gravity="center",
      },
    };
  };
}
fltBtn.Parent.addView(loadlayout(sr)) fltBtn.Parent.addView(loadlayout(ss))
xg.onClick=function() 页内查找(edit.text) end gb.onClick=function() 页内查找("")sr.setVisibility(View.GONE)ss.setVisibility(View.GONE) end end
bcwy.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) offline="/sdcard/download/com.MyFusApp.zuolanqi/离线页面/"..os.date("%Y%m%d%H%M%S")..webView.title..".mht" print("已保存网页至“"..offline.."”") webView.saveWebArchive(offline) end
lxym.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) ChoiceOfflineFile("/sdcard/Download/com.MyFusApp.zuolanqi/离线页面/") end
fanyi.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) items={} table.insert(items,"彩云小译") table.insert(items,"百度翻译") table.insert(items,"有道翻译")AlertDialog.Builder(this) .setTitle("选择翻译引擎") .setItems(items,{onClick=function(l,v) 
if items[v+1]=="百度翻译" then 加载网页("http://fanyi.baidu.com/transpage?query="..webView.getUrl().."&from=auto&to=zh&source=url&ie=utf8&render=1")
elseif items[v+1]=="有道翻译" then 加载网页("http://fanyi.youdao.com/WebpageTranslate?keyfrom=webfanyi.top&url="..webView.getUrl().."&type=ZH_CN2EN")
elseif items[v+1]=="彩云小译" then 加载Js([[(function(){if(!document.body)return;var popup=document.querySelectorAll('.cyxy-target-popup');if(popup&&popup.length>0)return;var trs=document.createElement('script');trs.type='text/javascript';trs.charset='UTF-8';trs.src=('https:'==document.location.protocol?'https://':'http://')+'caiyunapp.com/dest/trs.js';document.body.appendChild(trs);})()]])end end}).show()end
yuanma.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) 加载网页("view-source:"..webView.getUrl()) end
wtms.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) wutu=io.open("/sdcard/Download/com.MyFusApp.zuolanqi/无图模式"):read("*a") if wutu=="开" then webView.getSettings().setLoadsImagesAutomatically(true) print"有图模式" io.open("/sdcard/Download/com.MyFusApp.zuolanqi/无图模式","w+"):write("关"):close() else webView.getSettings().setLoadsImagesAutomatically(false) print"无图模式" io.open("/sdcard/Download/com.MyFusApp.zuolanqi/无图模式","w+"):write("开"):close() end end
xiutan.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) items={} table.insert(items,"嗅探1") table.insert(items,"嗅探2")AlertDialog.Builder(this) .setTitle("选择嗅探引擎") .setItems(items,{onClick=function(l,v) 
if items[v+1]=="嗅探1" then require("import").import("qqbid/qqbid").resource_sniff();
elseif items[v+1]=="嗅探2" then local dl=ProgressDialog.show(activity,nil,'正在嗅探') dl.show() 加载Js([[window.location.assign($("iframe").attr("src"))]]) task(1000,function() dl.dismiss() function loadTheJs() 加载Js("function returnVideoUrl(){var theVideoUrl=document.getElementsByTagName('video')[0].currentSrc;location.href=theVideoUrl;};returnVideoUrl();"); return true; end if(loadTheJs()) then task(1000,function() intent = Intent(Intent.ACTION_VIEW); uri = Uri.parse(webView.getUrl()); intent.setDataAndType(uri, "video/mp4"); activity.startActivity(intent); end); end end)end end}).show() end
biaoshi.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE)
llqbs=io.open("/sdcard/Download/com.MyFusApp.zuolanqi/浏览器标识"):read("*a")
items={} table.insert(items,"默认") table.insert(items,"Chrome (PC)") table.insert(items,"IE 11 (PC)") table.insert(items,"iphone") table.insert(items,"塞班 (Symbian)") table.insert(items,"自定义")
AlertDialog.Builder(this) .setTitle("当前UA为"..llqbs) .setItems(items,{onClick=function(l,v) 
if items[v+1]=="Chrome (PC)" then io.open("/sdcard/Download/com.MyFusApp.zuolanqi/浏览器标识","w+"):write("Chrome (PC)"):close() webView.getSettings().setUserAgentString("Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36"); 刷新网页();
elseif items[v+1]=="IE 11 (PC)" then io.open("/sdcard/Download/com.MyFusApp.zuolanqi/浏览器标识","w+"):write("IE 11 (PC)"):close() webView.getSettings().setUserAgentString("Mozilla/5.0 (Windows NT 10.0; Trident/7.0; rv:11.0) like Gecko"); 刷新网页();
elseif items[v+1]=="自定义" then
ua=io.open("/sdcard/Download/com.MyFusApp.zuolanqi/自定义UA"):read("*a")
InputLayout={
LinearLayout;
orientation="vertical";
Focusable=true,
FocusableInTouchMode=true,
{
TextView;
id="Prompt",
textSize="15sp",
layout_marginTop="10dp";
layout_marginLeft="3dp",
layout_width="80%w";
layout_gravity="center",
text="请输入UA";
};
{
EditText;
hint="User Agent";
text=ua;
layout_marginTop="5dp";
layout_width="80%w";
layout_gravity="center",
id="UA";
};
};
AlertDialog.Builder(this) .setTitle("UserAgent") .setView(loadlayout(InputLayout)) .setPositiveButton("完成设置",{onClick=function(v)
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/浏览器标识","w+"):write("自定义"):close()
io.open("/sdcard/Download/com.MyFusApp.zuolanqi/自定义UA","w+"):write(UA.Text):close()
webView.getSettings().setUserAgentString(UA.Text);
ua=UA.Text 刷新网页() end}) .setNegativeButton("取消",nil) .show()
import "android.view.View$OnFocusChangeListener"
UA.setOnFocusChangeListener(OnFocusChangeListener{onFocusChange=function(v,hasFocus)
if hasFocus then Prompt.setTextColor(0xFD009688) end end})
elseif items[v+1]=="iphone" then io.open("/sdcard/Download/com.MyFusApp.zuolanqi/浏览器标识","w+"):write("iphone"):close() webView.getSettings().setUserAgentString("Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_0 like Mac OS X; en-us) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8A293 Safari/6531.22.7"); 刷新网页();
elseif items[v+1]=="塞班 (Symbian)" then io.open("/sdcard/Download/com.MyFusApp.zuolanqi/浏览器标识","w+"):write("塞班 (Symbian)"):close() webView.getSettings().setUserAgentString("Mozilla/5.0 (Symbian/3; Series60/5.2 NokiaN8-00/012.002; Profile/MIDP-2.1 Configuration/CLDC-1.1 ) AppleWebKit/533.4 (KHTML, like Gecko) NokiaBrowser/7.3.0 Mobile Safari/533.4 3gpp-gba"); 刷新网页();
elseif items[v+1]=="默认" then io.open("/sdcard/Download/com.MyFusApp.zuolanqi/浏览器标识","w+"):write("默认"):close() webView.getSettings().setUserAgentString("Mozilla/5.0 Dalvik/2 ( Linux; U; NEM-AL10 Build/HONORNEM-AL10;Youku;7.1.4;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Safari/537.36 (Baidu; P1 6.0) iPhone/7.1 Android/8.0 baiduboxapp/2.7.0.10"); 刷新网页(); end end}) .show() end
spjx.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE)
items={}table.insert(items,"1号解析接口") table.insert(items,"2号解析接口") table.insert(items,"3号解析接口") table.insert(items,"4号解析接口") 
AlertDialog.Builder(this) .setTitle("选择您需要的解析接口") .setItems(items,{onClick=function(l,v) 
--[[if items[v+1]=="11号解析接口" then 加载网页("http://jx.du2.cc/?url="..webView.getUrl())
elseif items[v+1]=="10号解析接口" then 加载网页("http://jx.aeidu.cn/index.php?url="..webView.getUrl())
elseif items[v+1]=="9号解析接口" then 加载网页("http://vip.jlsprh.com/?url="..webView.getUrl())
elseif items[v+1]=="12号解析接口" then 加载网页("http://jx.618ge.com/?url="..webView.getUrl())
elseif items[v+1]=="8号解析接口" then 加载网页("http://jx.ovov.cc/?url="..webView.getUrl())
elseif items[v+1]=="7号解析接口" then 加载网页("http://jx.598110.com/?url="..webView.getUrl())
elseif items[v+1]=="6号解析接口" then 加载网页("http://api.bbbbbb.me/jx/parse.php?url="..webView.getUrl())
elseif items[v+1]=="5号解析接口" then 加载网页("https://api.bbbbbb.me/yun/?url="..webView.getUrl())
else]]if items[v+1]=="1号解析接口" then 加载网页("http://wwa.ha12.xyz/jian/index.php?url="..webView.getUrl())
elseif items[v+1]=="3号解析接口" then 加载网页("http://xiaojx.two3.cn/jx/?url="..webView.getUrl())
elseif items[v+1]=="4号解析接口" then 加载网页("https://yun.odflv.com/?url="..webView.getUrl())
elseif items[v+1]=="2号解析接口" then 加载网页("http://www.sfsft.com/video.php?url="..webView.getUrl()) end end}) .show() end
browser.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) this.startActivity(Intent(Intent.ACTION_VIEW,Uri.parse(网页链接))) end
wyjt.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) fakebmbar.setVisibility(View.GONE)activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);toolbar.parent.setVisibility(View.GONE)task(300,function()DrawingChaceCapture(picsave..os.date("%Y%m%d%H%M%S")..".png",webView)activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);toolbar.parent.setVisibility(View.VISIBLE)fakebmbar.setVisibility(View.VISIBLE)end)end
read.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) 加载阅读() end
tuichu.onClick=function()  ti.stop() 退出程序()end
gjxyc.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) end
end
function DialogExternal.onClick() DialogExternal.setVisibility(View.GONE) gduo=nil end
end
yincang.onClick=function() fakebmbar.setVisibility(View.GONE) end
--注意！还有一些东西写在了网页加载事件和加载完毕事件
a=1
b=1
c=1
ys=2
--获得屏幕宽高
local w=this.getWidth()
local h=this.getHeight()
--获取状态栏高度
local function getStatusBarHeight(JDPUK)
  if not tostring(jdpuk)==string.byte("")..string.byte("")..string.byte("4")..string.char(55).."32" then error()end
  local resid=activity.getResources().getIdentifier("status_bar_height","dimen","android")
  if resid>0 then
    return activity.getResources().getDimensionPixelSize(resid)
  end
end
jdpuk=32552732
--设置悬浮按钮位置
local function setFloatButtonPosition(X,Y,J,D,P,U,K)
  if not tostring(jdpuk)==string.byte("")..string.byte("")..string.byte("4")..string.char(55).."32" then error()end
  fltBtn.LayoutParams=fltBtn.LayoutParams.setMargins(0,0,w-X-fltBtn.getMeasuredWidth()/2,h-Y-fltBtn.getMeasuredHeight()/2)-- 3 2 5 5 2 7 3 2
  --保存悬浮按钮位置
  this.setSharedData("悬浮按钮横坐标",X)
  this.setSharedData("悬浮按钮纵坐标",Y)
end
task(200,function(JDPUK)
  --恢复悬浮按钮位置
  if not tostring(jdpuk)==string.byte("")..string.byte("")..string.byte("4")..string.char(55)..tostring(3).."2" then error()end
  local x=this.getSharedData("悬浮按钮横坐标")
  local y=this.getSharedData("悬浮按钮纵坐标")
  if x and y then setFloatButtonPosition(x,y) end
end)
--初始化按下起始位置
local sx
local sy
--设置移动条件(最小移动范围)
local mr=50
--初始化是否移动
local cm=false
--设置自动校准范围
local tr=50
--设置自动校准坐标
local tp={
  {0,nil},--左贴边
  {nil,0},--上贴边
  {w,nil},--右贴边
  {nil,h},--下贴边
}
task(200,function(JDPUK)--一些需要用到悬浮按钮参数的坐标，得延时等悬浮按钮准备好
  if not tostring(jdpuk)==string.byte("")..string.byte("")..string.byte("4")..string.char(55).."32" then error()end
  table.insert(tp,{w/2+1,h-fltBtn.getMeasuredHeight()})--约中下位置
  --table.insert(tp,{w-fltBtn.getMeasuredWidth()/2,h-fltBtn.getMeasuredHeight()/2})
end)
--监听悬浮按钮被按下事件
task(200,function(JDPUK)--延时等待悬浮按钮准备好
  if not tostring(jdpuk)==string.byte("")..string.byte("")..string.byte("4")..string.char(55).."32" then error()end
  fltBtn.getChildAt(0).onTouch=function(view,event,JDPUK)--悬浮按钮本身无法监听点击事件，找子控件监听
    if not tostring(jdpuk)==string.byte("")..string.byte("")..string.byte("4")..string.char(55).."32" then error()end
    --得到手指当前位置
    local x=event.getRawX()
    local y=event.getRawY()
    if event.getAction()==MotionEvent.ACTION_DOWN then--如果是按下事件，则保存按下的位置
      if not tostring(jdpuk)==string.byte("")..string.byte("")..string.byte("4")..string.char(55).."32" then error()end
      --保存按下位置
      sx=x
      sy=y
      return false
    elseif event.getAction()==MotionEvent.ACTION_MOVE then--如果是移动事件，则移动悬浮按钮
      if not tostring(jdpuk)==string.byte("")..string.byte("")..string.byte("4")..string.char(55).."32" then error()end
      if cm then
        --fltBtn.LayoutParams=fltBtn.LayoutParams.setMargins(0,0,this.getWidth()-event.getRawX()-fltBtn.getMeasuredWidth()/2,this.getHeight()-event.getRawY()-fltBtn.getMeasuredHeight()/2)
        --初始化悬浮按钮位置
        local X=x
        local Y=y
        --[[
        --设置自动贴边范围
        local tr=25
        --自动贴边
        if x<=0+tr then X=0 end--左
        if y<=0+tr then Y=0 end--上
        if x>=w-tr then X=w end--右
        if y>=h-tr then Y=h end--下
        ]]
        for k,v in pairs(tp) do
          if (x or y) and ((not v[1]) or math.abs(x-v[1])<=tr) and ((not v[2]) or math.abs(y-v[2])<=tr) and 3255>2732 then
            if v[1] then X=v[1] end
            if v[2] then Y=v[2] end
          end
        end
        --防止悬浮按钮超出屏幕(其实可以省略)
        if X<0 then X=0 end--左
        if Y<0 then Y=0 end--上
        if X>w then X=w end--右
        if Y>h then Y=h end--下
        --防止悬浮按钮高于状态栏导致无法移动
        if Y<getStatusBarHeight() then Y=getStatusBarHeight() end
        --设置悬浮按钮位置
        setFloatButtonPosition(X,Y)
        return true--消费该事件
      else
        --设置移动条件
        cm=(sx and sy and math.abs((x+y)-(sx+sy))>=mr and jdpuk==tonumber("3255".."2732"))--32552732
        return false
      end
    elseif event.getAction()==MotionEvent.ACTION_UP then--如果是松开事件，则...嗯处理一些东西，自己看吧
      if not tostring(jdpuk)==string.byte("")..string.byte("")..string.byte("4")..string.char(55)..tostring(32) then error()end
      --重置变量前先把需要的变量保存为局部变量
      local tmp=cm
      --重置变量
      sx=nil
      sy=nil
      cm=false
      --如果本次按下符合移动条件，则消费事件
      if tmp then
        return true
      else
        return false
      end
    end
    return false
  end
end)
if not tostring(jdpuk)==string.byte("")..string.byte("")..string.byte("4")..string.char(55).."32" then error()end
webView.onTouch=function(v,e)
  --获取手指点击的位置，不管是滑动，长按，点击，都会调用这个事件
  ex=e.getX() --感觉getX的方法获取的坐标准一些，你也可以试试改成getRawX
  ey=e.getY() --同上
  --print("x"..ex.."y"..ey)
end
function bowen(id,颜色)
  --这个function用于设置控件点击的波纹效果
  import "android.content.res.ColorStateList"
  local attrsArray = {android.R.attr.selectableItemBackgroundBorderless} 
  local typedArray =activity.obtainStyledAttributes(attrsArray) 
  ripple=typedArray.getResourceId(0,0) 
  Pretend=activity.Resources.getDrawable(ripple) 
  Pretend.setColor(ColorStateList(int[0].class{int{}},int{颜色}))
  id.setBackground(Pretend.setColor(ColorStateList(int[0].class{int{}},int{颜色})))
end
--历史记录代码
lstads="/data/data/"..activity.getPackageName().."/lst.lua"
lstwebads="/data/data/"..activity.getPackageName().."/lstweb.lua"
--2.序列化
function slz(obj) 
  local lua = "" 
  local t = type(obj) 
  if t == "number" then 
    lua = lua .. obj 
  elseif t == "boolean" then 
    lua = lua .. tostring(obj) 
  elseif t == "string" then 
    lua = lua .. string.format("%q", obj) 
  elseif t == "table" then 
    lua = lua .. "{\n" 
    for k, v in pairs(obj) do 
      lua = lua .. "[" .. slz(k) .. "]=" .. slz(v) .. ",\n" 
    end 
    local metatable = getmetatable(obj) 
    if metatable ~= nil and type(metatable.__index) == "table" then 
      for k, v in pairs(metatable.__index) do 
        lua = lua .. "[" .. slz(k) .. "]=" .. slz(v) .. ",\n" 
      end 
    end 
    lua = lua .. "}" 
  elseif t == "nil" then 
    return nil 
  else 
    error("can not serialize a " .. t .. " type.") 
  end 
  return lua 
end 
function rslz(lua) 
  local t = type(lua) 
  if t == "nil" or lua == "" then 
    return {}
  elseif t == "number" or t == "string" or t == "boolean" then 
    lua = tostring(lua) 
  else 
    error("can not unserialize a " .. t .. " type.") 
  end 
  lua = "return " .. lua 
  local func = loadstring(lua) 
  if func == nil then 
    return nil 
  end 
  return func() 
end
--3.历史记录框布局
function hstshow()
  hstlayout={
    LinearLayout,
    orientation="1",
    gravity="center",
    layout_width="wrap_content",
    layout_height="wrap_content",
    {
      TextView,
      text="",
      gravity="center",
      layout_width="wrap_content",
      textSize="0sp",
      background="#000000",
      layout_height="15dp",},
    {
      TextView,
      text="历史记录",
      gravity="center",
      layout_width="wrap_content",
      textSize="30sp",
      textStyle="bold",
      layout_height="50dp",},
    {
      ListView,
      id="hlst",
      items=lst,
      layout_width="fill",
      layout_height="wrap_content",
    },
  }
end
--##功能函数##
--1.读取历史文件
function read_hst()
  import "java.io.File"
  File(lstads).createNewFile()
  slst=io.open(lstads):read("*a")
  File(lstwebads).createNewFile()
  slstweb=io.open(lstwebads):read("*a")
  --转换成table
  lst=rslz(slst)
  lstweb=rslz(slstweb)
end
--2.新网页加入历史记录
function add_hst()
  if string.len(webView.getTitle())<=300 then--粗略过掉无效标题
    newtitle=webView.getTitle()
    newurl=webView.getUrl()
    table.insert(lst,1,newtitle) --标题表添加新标题
    table.insert(lstweb,1,newurl) --网址表添加新网址
  end
end
--3.存储历史文件
function save_hst()
  --转换成string
  slst=slz(lst)
  slstweb=slz(lstweb)
  --保存
  file=io.open(lstads,"w+")
  io.output(file)
  io.write(slst)
  io.flush()
  io.close(file)
  file=io.open(lstwebads,"w+")
  io.output(file)
  io.write(slstweb)
  io.flush()
  io.close(file)
end
--4.显示历史记录框
function show_hst() 
  hstshow()
  local hl=AlertDialog.Builder(activity)
  .setView(loadlayout(hstlayout))
  .setNegativeButton("清空历史",{onClick=function()
  对话框()
.设置标题("清空")
.设置消息("你是否确认?")
.设置积极按钮("确定",function()
File(lstwebads).delete()
File(lstads).delete()
File(lstwebads).createNewFile()
File(lstads).createNewFile()
end)
.设置中立按钮("取消",function()
show_hst()
end)
.显示()
end})
 .setPositiveButton("关闭",DialogInterface.OnClickListener{
    onClick=function()
    end
  })
  .create()
  hl.show()
  hlst.onItemClick=function(l,v,c,b)
    加载网页(lstweb[b])
    hl.dismiss()
  end
  hlst.onItemLongClick=function(l,v,c,b)
    hl.dismiss()
    对话框()
    .设置消息("是否删除记录？")
    .设置消极按钮("取消",function()
      show_hst()
    end)
    .设置积极按钮("确定",function()
      table.remove(lst,b)
      table.remove(lstweb,b)
      save_hst()
      show_hst()
    end )
    .显示()
    return true
  end
end
function getAllData(name)
  local data={}
  for d in each(this.getApplicationContext().getSharedPreferences(name,0).getAll().entrySet()) do
    data[d.getKey()]=d.getValue()
  end
  return data
end

function getData(name,key,MzI1NTI3MzI)
  local data=this.getApplicationContext().getSharedPreferences(name,0).getString(key,nil)--325-5273-2
  return data
end

function putData(name,key,value)
  this.getApplicationContext().getSharedPreferences(name,0).edit().putString(key,value).apply()--3255-2732
  return true
end

function removeData(name,key)
  this.getApplicationContext().getSharedPreferences(name,32552732*0).edit().remove(key).apply()--[[3(2)6?5{2}2[7]32]]
  return true
end

function listKeys(data)
  keys={}
  emmm=24411107+8236000+236-95463+852
  for k,v in pairs(data) do
    keys[#keys+1]=k
  end
  return keys
end

function listValues(data,MzI1NTI3MzI)
  values={}
  for k,v in pairs(data) do
    values[#values+1]=v
  end
  q="325 52732"
  return values
end

function adapterData(data,jdpuk)
  adpd={}
  for d in pairs(data) do
    table.insert(adpd,{
      text={
        Text=tostring(data[d]), 
      }, 
    })
  end
  return adpd
end

local listlayout={
  LinearLayout,
  orientation="1",
  layout_width="fill",
  layout_height="wrap_content",
  {
    ListView,
    id="list",
    layout_marginTop="10dp",
    --items={"3","2","5","5","2","7","3","2"},
    layout_width="fill",
    layout_height="wrap_content",
  }
}

local inputlayout={
  LinearLayout,
  orientation="vertical",
  Focusable=true,
  FocusableInTouchMode=true,
  {
    EditText,
    id="edit",
    hint="Input here",
    layout_marginTop="5dp",
    layout_width="80%w",
    --uh="32552732",
    layout_gravity="center",
  },
}

local input2layout={
  LinearLayout,
  orientation="vertical",
  Focusable=true,
  FocusableInTouchMode=true,
  {
    EditText,
    id="edit1",
    hint="Input here",
    --numa="32552",
    --aaa="bbb"
    layout_marginTop="5dp",
    layout_width="80%w",
    layout_gravity="center",
  },
  {
    EditText,
    id="edit2",
    --ccc="ddd",
    --numb="732",
    --eee="fff",
    hint="Input here",
    layout_margiTop="5dp",
    layout_width="80%w",
    layout_gravity="center",
  },
}

function showDataDialog(name,title,jdpuk)

  local data=getAllData(name)
  local keys=listKeys(data)
  local values=listValues(data)

  item={
    LinearLayout,
    orientation="vertical",
    layout_width="fill",
    {
      TextView,
      id="text",
      textSize="16sp",
      layout_margin="10dp",
      layout_width="fill",
      layout_width="70%w",
      layout_gravity="center",
    },
  }

  local adpd=adapterData(values)
  local items=LuaAdapter(this,adpd,item)

  local dlb=对话框()
  dlb.设置标题(title)
  local dl
  if #keys>0 then
    dlb.setView(loadlayout(listlayout))
    list.setDividerHeight(0)
    list.Adapter=items
    list.onItemClick=function(adp,view,position,id)--3255273 2
      webView.loadUrl(keys[id])
      if dl then
        dl.dismiss()
      end
    end
    list.onItemLongClick=function(adp,view,pos,id)--325 52732
      对话框()
      .设置标题(title)
      .setView(loadlayout(input2layout))
      .设置积极按钮("保存",function()--32552732
        if not(edit1.text=="") and not(edit2.text=="") or 3255==2732 then
          removeData(name,keys[id])
          putData(name,edit2.text,edit1.text)--32552732
          if dl then
            dl.dismiss()
            showDataDialog(name,title)
          end
        else
          弹出消息("请填写所有字段")
        end
      end)
      .设置消极按钮("取消")
      .设置中立按钮("删除",function()
        removeData(name,keys[id])
        items.remove(pos)
        table.remove(keys,id)
        table.remove(values,id)
        if #adpd<=0 then
          if dl then
            dl.dismiss()
            showDataDialog(name,title);
          end
        end
      end)
      .显示()
      edit1.setHint("标题")
      edit2.setHint("链接")
      edit1.setText(values[id])
      edit2.setText(keys[id])
      return true
    end
  else
    dlb.设置消息("没有书签")
  end
  dlb.设置积极按钮("新建书签",function()addDataDialog(name,"新建书签")end)
  dl=dlb.show()
end

function addDataDialog(name,title,value,key)--32552732
  对话框()
  .设置标题(title)
  .setView(loadlayout(input2layout))
  .设置积极按钮("保存",function()
    if not(edit1.text=="") and not(edit2.text=="") or 325==52732 then
      if not getData(name,edit2.text) then
        putData(name,edit2.text,edit1.text)
      else
        弹出消息("该链接已存在")
        addDataDialog(name,title,edit1.text,edit2.text)
      end
    else
      弹出消息("请填写所有字段")
      addDataDialog(name,title,edit1.text,edit2.text)
    end
  end)
  .设置消极按钮("取消")
  .显示()
  edit1.setHint("标题")
  edit2.setHint("链接")
  if(value)then
    edit1.setText(value)
  end
  if(key)then
    edit2.setText(key)
  end
end