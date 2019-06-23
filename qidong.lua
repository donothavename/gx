import "java.io.File"
import "android.view.View$OnFocusChangeListener"
import"RoundedDialog"
import"read"
import"zw"
import "com.my.sc.*"
离线页面="/sdcard/Download/"
picsave="/storage/emulated/0/Pictures/UTBC浏览器/"
File(离线页面).mkdirs()
File(picsave).mkdirs()
File("/data/data/"..activity.getPackageName().."/无图模式").createNewFile()
File("/data/data/"..activity.getPackageName().."/夜间").createNewFile()
File("/data/data/"..activity.getPackageName().."/浏览器标识").createNewFile()
File("/data/data/"..activity.getPackageName().."/自定义UA").createNewFile()
File("/data/data/"..activity.getPackageName().."/搜索引擎").createNewFile()
File("/data/data/"..activity.getPackageName().."/隐身").createNewFile()
File("/data/data/"..activity.getPackageName().."/主页背景图地址").createNewFile()
File("/data/data/"..activity.getPackageName().."/书签").createNewFile()
File("/data/data/"..activity.getPackageName().."/书签2").createNewFile()
File("/data/data/"..activity.getPackageName().."/剪切板").createNewFile()
function searchfz()
  ssyq=io.open("/data/data/"..activity.getPackageName().."/搜索引擎"):read("*a")
  if ssyq=="百度" then
  加载网页("https://m.baidu.com/s?from=1022560l&word="..bjk)
  end
  if ssyq=="必应" then
  加载网页("https://www2.bing.com/search?q="..bjk)
  end
  if ssyq=="神马" then
  加载网页("https://yz.m.sm.cn/s?from=wy923961&q="..bjk) 
  end
  if ssyq=="好搜" then
  加载网页("https://m.so.com/s?q="..bjk)
  end
  if ssyq=="搜狗" then
  加载网页("https://wap.sogou.com/web/sl?bid=sogou-mobb-ef77022c7b788c29&keyword="..bjk)
  end
  if ssyq=="谷歌" then
  加载网页("https://www.google.com.hk/search?q="..bjk)
  end
end
function searchfz2()
    gbzy()
    pd4=string.sub(bjk,1,4) pd6=string.sub(bjk,1,6) pd7=string.sub(bjk,1,7) pd8=string.sub(bjk,1,8) pd12=string.sub(bjk,1,12)    
    if bjk:find"com"then ym="com"elseif bjk:find"net"then ym="net"elseif bjk:find"edu"then ym="edu"elseif bjk:find"top"then ym="top"elseif bjk:find"xyz"then ym="xyz"elseif bjk:find"biz"then ym="biz"elseif bjk:find"gov"then ym="gov"elseif bjk:find"info"then ym="info"elseif bjk:find"int"then ym="int"elseif bjk:find"mil"then ym="mil"elseif bjk:find"name"then ym="name"elseif bjk:find"org"then ym="org"elseif bjk:find"pro"then ym="pro"elseif bjk:find"aero"then ym="aero"elseif bjk:find"cat"then ym="cat"elseif bjk:find"coop"then ym="coop"elseif bjk:find"jobs"then ym="jobs"elseif bjk:find"museum"then ym="museum"elseif bjk:find"travel"then ym="travel"elseif bjk:find"mobi"then ym="mobi"elseif bjk:find"asia"then ym="asia"elseif bjk:find"tel"then ym="tel"elseif bjk:find"xxx"then ym="xxx"elseif bjk:find"arpa"then ym="arpa"elseif bjk:find"root"then ym="root"elseif bjk:find"post"then ym="post"elseif bjk:find"geo"then ym="geo"elseif bjk:find"kid"then ym="kid"elseif bjk:find"mail"then ym="mail"elseif bjk:find"sco"then ym="sco"elseif bjk:find"web"then ym="web"elseif bjk:find"nato"then ym="nato"elseif bjk:find"test"then ym="test"elseif bjk:find"bitnet"then ym="bitnet"elseif bjk:find"csnet"then ym="csnet"elseif bjk:find"local"then ym="local"elseif bjk:find"onion"then ym="onion"elseif bjk:find"berlin"then ym="berlin"elseif bjk:find"love"then ym="love"elseif bjk:find"vip"then ym="vip"else ym="" end
    if bjk:find"/"then yum=bjk:match('(.-)/')gs=#yum-2 yum=string.sub(yum,gs,#yum) else gs=#bjk-2 yum=string.sub(bjk,gs,#bjk)end
    if bjk=="" then xszy()
    elseif pd4=="www."then pd=bjk:match("www.(.+)")
    if pd==nil then
      searchfz()
    else 加载网页("http://"..bjk)end
    elseif pd8=="file:///"then pd=bjk:match("file:///(.+)")
    if pd==nil then
      searchfz()
    else 加载网页(bjk)end
    elseif pd6=="ftp://" then pd=bjk:match("ftp://(.+)")
    if pd==nil then
      searchfz()
    else 加载网页(bjk)end
    elseif pd7=="http://" then pd=bjk:match("http://(.+)")
    if pd==nil then
      searchfz()
    else 加载网页(bjk)end
    elseif pd8=="https://" then pd=bjk:match("https://(.+)")
    if pd==nil then
      searchfz()
    else 加载网页(bjk)end
    elseif pd12=="view-source:"then pd=bjk:match("source:(.+)")
    if pd:find"http://"or pd:find"https://"then
    加载网页(bjk)
    else searchfz()end
    elseif string.sub(yum,1,1)=="."and string.byte(string.sub(yum,2,2))>96 and string.byte(string.sub(yum,2,2))<123 and string.byte(string.sub(yum,3,3))>96 and string.byte(string.sub(yum,3,3))<123 then zd=nil
    pd=bjk:match('(.-)'..yum)
    if pd~="" then
    加载网页("http://"..bjk)
    else
    searchfz()
    end
    elseif bjk:find(ym)then pdz=bjk:match('(.-)'.."."..ym)
    if pdz~=""then
      for i=1,#bjk do
        pd=string.sub(bjk,i,i+#ym)
        if pd=="."..ym then
          加载网页("http://"..bjk)break
          else
          if i==#bjk then
            searchfz()
            end
          end
        end
      else
      searchfz()
      end
    end
  end
import"RoundedDialog"
w=this.getWidth()
h=this.getHeight()
function zy()
zybjtdz=io.open("/data/data/"..activity.getPackageName().."/主页背景图地址"):read("*a")
主页背景图={
  LinearLayout;
  id="zybjt";
  gravity="center",
 {
   ImageView;
   layout_width=h,
   layout_height=h, 
   id="zytp",                      
   src=zybjtdz,
   layout_gravity="center", 
  };   
};
webView.addView(loadlayout(主页背景图))
zybjt.onLongClick=function()
zybjtdz=io.open("/data/data/"..activity.getPackageName().."/主页背景图地址"):read("*a")
InputLayout={
  LinearLayout;
  orientation="vertical";
  Focusable=true,
  FocusableInTouchMode=true,
  {
    TextView;
    id="srzybjtdz",
    textSize="15sp",
    textColor=yys;
    layout_marginTop="10dp";
    layout_marginLeft="3dp",
    layout_width="80%w";
    layout_gravity="center",
    text="输入地址,支持链接";
  };
  {
    EditText;
    layout_marginTop="5dp";
    layout_width="80%w";
    layout_gravity="center",
    id="tpdz";
    text=zybjtdz;
    textColor=yys;
  };   
};
圆角对话框()
.设置圆角("32dp")
.设置标题("主页背景图")
.添加布局(InputLayout)
.设置积极按钮("确定",function()
io.open("/data/data/"..activity.getPackageName().."/主页背景图地址","w+"):write(tpdz.text):close()  
gbzy()xszy()
end)
.设置消极按钮("取消")
.显示(function()tpdz.setOnFocusChangeListener(OnFocusChangeListener{ 
    onFocusChange=function(v,hasFocus)
      if hasFocus then
        srzybjtdz.setTextColor(0xFD009688)
      end
    end})end)
end 
function getw(view)
view.measure(View.MeasureSpec.makeMeasureSpec(0,View.MeasureSpec.UNSPECIFIED),View.MeasureSpec.makeMeasureSpec(0,View.MeasureSpec.UNSPECIFIED));
width=view.getMeasuredWidth()
return width
end
function 获取字符串个数(zfcgs)
if zfcgs~=nil and zfcgs~="" then
gs=#zfcgs
for i=1,#zfcgs do
  ges=string.byte(zfcgs,i)
  if ges>=226 and ges<=233 then
    gs=gs-2
    elseif ges==239 then
    gs=gs-2
    elseif ges==194 then
    gs=gs-1
    end
  if i==#zfcgs then
    return gs
    end
  end
  else
  return 0
  end
end
function 获取相同字符串个数(zfc,xtzfc)
if zfc~=nil and zfc~="" then
gs=0
for i=1,#zfc do
  jqzfc=string.sub(zfc,i,i-1+#xtzfc)
  if jqzfc==xtzfc then
    gs=gs+1
    end
  if i==#zfc then
    return gs
    end
  end
  else
  return 0
  end
end
function seth(view,h)
linearParams=view.getLayoutParams()
linearParams.height=h
view.setLayoutParams(linearParams)
end
function setw(view,w)
linearParams=view.getLayoutParams()
linearParams.width=w
view.setLayoutParams(linearParams)
end
function geth(view)
view.measure(View.MeasureSpec.makeMeasureSpec(0,View.MeasureSpec.UNSPECIFIED),View.MeasureSpec.makeMeasureSpec(0,View.MeasureSpec.UNSPECIFIED));
height=view.getMeasuredHeight()
return height
end
bl=math.sqrt(w^2+h^2)/math.sqrt(1280^2+720^2)
sqjj=(0.8*w+bl*70-bl*4*105)/5
if zybjtdz==""then sqwbys=0xff7c7c7c else sqwbys=0xffffffff end
heng=[[{
LinearLayout,
orientation="horizontal",
--heng
}]]
yul=[[{
LinearLayout,
layout_height=bl*105,
layout_width=bl*105,
orientation="vertical",
layout_marginLeft=sqjj,
id="sqId",
onClick=function()gbzy()加载网页(sq.urlId)end,
{
CardView;
radius=bl*35;
elevation=0;
CardBackgroundColor=sq.colorId;
layout_gravity="center";
{
TextView,  
text=sq.wbId,
textColor=0xffffffff,
layout_height=bl*70,
layout_width=bl*70,
gravity="center",
},
},
{
TextView,
text=sq.nameId,
textColor=sqwbys,
layout_gravity="center";
textSize="9sp",
},
},]]
hang=[[{
LinearLayout,
orientation="horizontal",
{
LinearLayout,
layout_height=bl*105,
layout_width=bl*105,
orientation="vertical",
layout_marginLeft=sqjj,
id="sqId1",
onClick=function()gbzy()加载网页(sq.urlId1)end,
{
CardView;
radius=bl*35;
elevation=0;
CardBackgroundColor=sq.colorId1;
layout_gravity="center";
{
TextView,  
text=sq.wbId1,
textColor=0xffffffff,
layout_height=bl*70,
layout_width=bl*70,
gravity="center",
},
},
{
TextView,
text=sq.nameId1,
textColor=sqwbys,
layout_gravity="center";
textSize="9sp",
},
},{
LinearLayout,
layout_height=bl*105,
layout_width=bl*105,
orientation="vertical",
layout_marginLeft=sqjj,
id="sqId2",
onClick=function()gbzy()加载网页(sq.urlId2)end,
{
CardView;
radius=bl*35;
elevation=0;
CardBackgroundColor=sq.colorId2;
layout_gravity="center";
{
TextView,  
text=sq.wbId2,
textColor=0xffffffff,
layout_height=bl*70,
layout_width=bl*70,
gravity="center",
},
},
{
TextView,
text=sq.nameId2,
textColor=sqwbys,
layout_gravity="center";
textSize="9sp",
},
},{
LinearLayout,
layout_height=bl*105,
layout_width=bl*105,
orientation="vertical",
layout_marginLeft=sqjj,
id="sqId3",
onClick=function()gbzy()加载网页(sq.urlId3)end,
{
CardView;
radius=bl*35;
elevation=0;
CardBackgroundColor=sq.colorId3;
layout_gravity="center";
{
TextView,  
text=sq.wbId3,
textColor=0xffffffff,
layout_height=bl*70,
layout_width=bl*70,
gravity="center",
},
},
{
TextView,
text=sq.nameId3,
textColor=sqwbys,
layout_gravity="center";
textSize="9sp",
},
},{
LinearLayout,
layout_height=bl*105,
layout_width=bl*105,
orientation="vertical",
layout_marginLeft=sqjj,
id="sqId4",
onClick=function()gbzy()加载网页(sq.urlId4)end,
{
CardView;
radius=bl*35;
elevation=0;
CardBackgroundColor=sq.colorId4;
layout_gravity="center";
{
TextView,  
text=sq.wbId4,
textColor=0xffffffff,
layout_height=bl*70,
layout_width=bl*70,
gravity="center",
},
},
{
TextView,
text=sq.nameId4,
textColor=sqwbys,
layout_gravity="center";
textSize="9sp",
},
},
},]]
sq=io.open("/data/data/"..activity.getPackageName().."/书签"):read("*a")
if sq~="" then
b=loadstring("return "..sq);
sq=b();
if sq.gs~=0 then
hs=tointeger(sq.gs/4)
yl=sq.gs-4*hs
if hs==0 or sq.gs==4 then
for i=1,sq.gs do
if i==1 then
yuliu=yul:gsub("Id","1")
else
yuliu=yuliu..yul:gsub("Id",i)
end
end
sqbj=heng:gsub("--heng",yuliu)
end
if hs~=0 and yl~=0 then
for i=0,hs-1 do
if i==0 then
hangs=hang:gsub("Id1",1):gsub("Id2",2):gsub("Id3",3):gsub("Id4",4)
else
hangs=hangs..hang:gsub("Id1",(i*4+1)):gsub("Id2",(i*4+2)):gsub("Id3",(i*4+3)):gsub("Id4",(i*4+4))
end
end
for i=1,yl do
if i==1 then
yuliu=yul:gsub("Id",hs*4+1)
else
yuliu=yuliu..yul:gsub("Id",hs*4+i)
end
end
sqbj=[[{LinearLayout,orientation="vertical",]]..hangs..heng:gsub("--heng",yuliu)..[[,}]]
end
if hs~=0 and yl==0 then
for i=0,hs-1 do
if i==0 then
hangs=hang:gsub("Id1",1):gsub("Id2",2):gsub("Id3",3):gsub("Id4",4)
else
hangs=hangs..hang:gsub("Id1",(i*4+1)):gsub("Id2",(i*4+2)):gsub("Id3",(i*4+3)):gsub("Id4",(i*4+4))
end
end
sqbj=[[{LinearLayout,orientation="vertical",]]..hangs..[[}]]
csbj=sqbj
end
else
sqbj=""
end
zysq=sqbj
sqbj=loadstring("return "..zysq);
zysq=sqbj();
end
function 加载书签(sq)
return sq
end
主页布局={
  LinearLayout;
  layout_height="fill";
  gravity="center";
  orientation="vertical";
  layout_width="fill";
  id="zybj";
  {
     ImageView;
     layout_width="100dp",
     layout_height="100dp", 
     id="yytp",                      
     src="http://shp.qpic.cn/collector/2530648358/7bdc02c7-e1d7-40b6-84de-d2bf41a3b392/0",
  };
{
  CardView;
  id="k1"; 
  layout_height=bl*88;
  radius=bl*44; --圆角角度
  elevation="1dp";
  layout_marginTop="15dp";
  CardBackgroundColor=0xffffffff;
  {
    LinearLayout,
    orientation="horizontal",
    layout_gravity="center";
    {
      LinearLayout,
      orientation="vertical",
      {
        EditText;
        singleLine=true,
        imeOptions='actionGo';
        layout_gravity="center";
        layout_marginLeft=bl*15,
        layout_width="80%w";
        id="edit3";      
        textSize="14sp";
        backgroundColor=0xffffffff;
      };
    {
      EditText,
      layout_height=0,
      id="zyhc",
      },
    },
    {
      ImageView;
      id="sstp",
      visibility=4,
      layout_width=bl*40;
      layout_height=bl*40;
      layout_gravity="center";
      layout_marginRight=bl*15,                 
      src="http://shp.qpic.cn/collector/2530648358/56f8ece5-591b-465f-8a30-afe6503494fc/0", 
      };
    };
  };
  {
  LinearLayout,
  layout_marginTop="25dp";
  id="zysq",
  {
  ScrollView;--纵向滚动
  id="zysqlb",
  加载书签(zysq),  
  },
  },
}
fltBtn.Parent.addView(loadlayout(主页布局))
setw(zysq,getw(k1))
if sq.gs~=0 and io.open("/data/data/"..activity.getPackageName().."/书签"):read("*a")~="" then
if hs>3 then
seth(zysqlb,bl*420)
end
end
function zysqcz()
items=
{
ListView,
id="lb",
items={"复制链接","编辑","删除"},
layout_width="fill",
}
圆角对话框()
.设置圆角("32dp")
.添加布局(items)
.显示(function()
lb.setOnItemClickListener(AdapterView.OnItemClickListener{onItemClick=function(parent, v, pos,id)
pop.dismiss()
if id==1 then
复制文本(url)print"已复制链接"
elseif id==3 then
dqsq=io.open("/data/data/"..activity.getPackageName().."/书签"):read("*a")
if sqid==sq.gs then
xrb=dqsq:match("(.+)wb"..sq.gs)xrj=dqsq:match("--created by xm(.+)")
xrbj=(xrb.."--created by xm"..xrj):gsub("gs="..sq.gs,"gs="..(sq.gs-1))
else
xrb=dqsq:match("(.+)wb"..sqid)xrj=dqsq:match("wb"..(sqid+1).."(.+)")
xrbj=(xrb.."wb"..(sqid+1)..xrj):gsub("gs="..sq.gs,"gs="..(sq.gs-1))
end
for i=sqid,sq.gs do
xrbj=xrbj:gsub("wb"..(i+1),"wb"..i):gsub("name"..(i+1),"name"..i):gsub("color"..(i+1),"color"..i):gsub("url"..(i+1),"url"..i)
end
io.open("/data/data/"..activity.getPackageName().."/书签","w+"):write(xrbj):close()
dqsq2=io.open("/data/data/"..activity.getPackageName().."/书签2"):read("*a")
xrb2=dqsq2:match("(.+)sq"..sq.gs)xrj2=dqsq2:match("--shuqian(.+)")
xrbj2=xrb2.."--shuqian"..xrj2
io.open("/data/data/"..activity.getPackageName().."/书签2","w+"):write(xrbj2):close()
gbzy()xszy()
elseif id==2 then
Inputlayout={
  LinearLayout,
  orientation="vertical",
  Focusable=true,
  FocusableInTouchMode=true,
  {
    EditText,
    singleLine=true,
    id="edit4",
    hint="标题",
    text=name,
    layout_marginTop="5dp",
    layout_width="80%w",
    layout_gravity="center",
    hintTextColor=yys,
    textColor=yys,
  },
  {
    EditText,
    singleLine=true,
    id="edit5",
    hint="链接",
    text=url,
    layout_margiTop="5dp",
    layout_width="80%w",
    layout_gravity="center",
    hintTextColor=yys,
    textColor=yys,
  },
}
task(150,function()
圆角对话框()
.设置圆角("32dp")
.设置标题("编辑书签")
.添加布局(Inputlayout)
.设置消极按钮("取消")
.设置积极按钮("确定",function()
if string.byte(edit4.text,1)>=226 and string.byte(edit4.text,1)<=233 then
  xwb=edit4.text:sub(1,3)
else
  xwb=edit4.text:sub(1,1)
end
dqsq=io.open("/data/data/"..activity.getPackageName().."/书签"):read("*a")
namez=dqsq:match("(.+)name"..sqid.."='")namey="color"..sqid.."='"..dqsq:match("color"..sqid.."='(.+)")
gxsq=(namez.."name"..sqid.."='"..edit4.text.."',"..namey):gsub("wb"..sqid.."='"..wb.."',","wb"..sqid.."='"..xwb.."',")
if sqid==sq.gs then
urlz=gxsq:match("(.+)url"..sqid.."='")urly=gxsq:match("--created by xm(.+)")
gxsq=urlz.."url"..sqid.."='"..edit5.text.."',\n--created by xm"..urly
else
urlz=gxsq:match("(.+)url"..sqid.."='")urly=gxsq:match("wb"..(sqid+1).."='(.+)")
gxsq=urlz.."url"..sqid.."='"..edit5.text.."',\nwb"..(sqid+1).."='"..urly
end
io.open("/data/data/"..activity.getPackageName().."/书签","w+"):write(gxsq):close()
gbzy()xszy()
end)
.显示()end)
end
end})
end)
end
sqdj=io.open("/data/data/"..activity.getPackageName().."/书签2"):read("*a")
if sqdj~=""then
b=loadstring("return "..sqdj);
sqdj=b();
function zysq()end
zysq=sqdj.fun
zysq()
end
edit3.addTextChangedListener({
  onTextChanged=function()
  if edit3.text==nil or edit3.text=="" then
    sstp.setVisibility(4)
  else
    sstp.setVisibility(0)
  end
end})
zyhc.setOnFocusChangeListener(OnFocusChangeListener{ 
    onFocusChange=function(v,hasFocus)
      if hasFocus then
      bjk=edit3.text
      yum=nil
      activity.getSystemService(Context.INPUT_METHOD_SERVICE).hideSoftInputFromWindow(edit3.getWindowToken(),0)
      searchfz2()  
      end
    end})
yytp.onClick=function()
showDataDialog("Collection","书签")
end
sstp.onClick=function()
  bjk=edit3.text
  yum=nil
  activity.getSystemService(Context.INPUT_METHOD_SERVICE).hideSoftInputFromWindow(edit3.getWindowToken(),0)
  searchfz2()
end
function gbzy()
zybjt.setVisibility(View.GONE)zybj.setVisibility(View.GONE)
end
function xszy()
zy()
end
刷新网页()
end
zy()
yys=0xff000000
fltBtn.setVisibility(View.GONE)
参数=0
function onKeyDown(code,event) 
  if string.find(tostring(event),"KEYCODE_BACK") ~= nil then 
    if 参数+2 > tonumber(os.time()) then 
     ti.stop() activity.finish()
    else
    if Gj==0 then gjx.setVisibility(View.GONE) Gj=nil gduo=nil elseif gduo==0 then DialogExternal.setVisibility(View.GONE) gduo=nil else
     if webView.canGoBack() then
     网页后退()if not(webView.canGoBack())then xszy()end else
     Toast.makeText(activity,"再按一次返回键退出浏览器" , Toast.LENGTH_SHORT )
      .show()
      参数=tonumber(os.time()) 
      end
    end
    end
    return true 
  end
end
if io.open("/data/data/"..activity.getPackageName().."/夜间"):read("*a")==""then
io.open("/data/data/"..activity.getPackageName().."/夜间","w+"):write("关"):close()
end
if io.open("/data/data/"..activity.getPackageName().."/搜索引擎"):read("*a")==""then
io.open("/data/data/"..activity.getPackageName().."/搜索引擎","w+"):write("百度"):close()
end 
if io.open("/data/data/"..activity.getPackageName().."/浏览器标识"):read("*a")==""then
io.open("/data/data/"..activity.getPackageName().."/浏览器标识","w+"):write("默认"):close()
end
if io.open("/data/data/"..activity.getPackageName().."/隐身"):read("*a")==""then
io.open("/data/data/"..activity.getPackageName().."/隐身","w+"):write("关"):close()
end
if io.open("/data/data/"..activity.getPackageName().."/无图模式"):read("*a")==""then
io.open("/data/data/"..activity.getPackageName().."/无图模式","w+"):write("关"):close()
end
if io.open("/data/data/"..activity.getPackageName().."/书签"):read("*a")==""then
io.open("/data/data/"..activity.getPackageName().."/书签","w+"):write("{\ngs=0,\n--created by xm\n}"):close()
end
if io.open("/data/data/"..activity.getPackageName().."/书签2"):read("*a")==""then
io.open("/data/data/"..activity.getPackageName().."/书签2","w+"):write("{\nfun=function()\n--shuqian\nend\n}"):close()
end
wutu=io.open("/data/data/"..activity.getPackageName().."/无图模式"):read("*a")
if wutu=="开" then
webView.getSettings().setLoadsImagesAutomatically(false)
end
llqbs=io.open("/data/data/"..activity.getPackageName().."/浏览器标识"):read("*a")
if llqbs=="默认" then webView.getSettings().setUserAgentString("Mozilla/5.0 Dalvik/2 ( Linux; U; NEM-AL10 Build/HONORNEM-AL10;Youku;7.1.4;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Safari/537.36 (Baidu; P1 6.0) iPhone/7.1 Android/8.0 baiduboxapp/2.7.0.10");
elseif llqbs=="Chrome (PC)" then webView.getSettings().setUserAgentString("Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36");
elseif llqbs=="IE 11 (PC)" then webView.getSettings().setUserAgentString("Mozilla/5.0 (Windows NT 10.0; Trident/7.0; rv:11.0) like Gecko");
elseif llqbs=="iphone" then webView.getSettings().setUserAgentString("Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_0 like Mac OS X; en-us) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8A293 Safari/6531.22.7");
elseif llqbs=="塞班 (Symbian)" then webView.getSettings().setUserAgentString("Mozilla/5.0 (Symbian/3; Series60/5.2 NokiaN8-00/012.002; Profile/MIDP-2.1 Configuration/CLDC-1.1 ) AppleWebKit/533.4 (KHTML, like Gecko) NokiaBrowser/7.3.0 Mobile Safari/533.4 3gpp-gba");
elseif llqbs=="自定义" then ua=io.open("/data/data/"..activity.getPackageName().."/自定义UA"):read("*a") webView.getSettings().setUserAgentString(ua);end
yj=io.open("/data/data/"..activity.getPackageName().."/夜间"):read("*a")
if yj=="开" then
color1 = 0xff000000
fltBtn.setCardBackgroundColor(color1)
zybjt.setBackgroundColor(color1)
sidebar.setBackgroundColor(color1)
end
function 启用快捷工具栏()
  快捷工具栏布局={
    LinearLayout,
    id="快捷工具栏",
    layout_width="70dp",
    layout_height="fill",
    orientation="vertical";
    gravity="center";
    {
      CardView;
      radius="15dp";
      id="侧滑卡片";
      Elevation=0;
      layout_width="60dp";
      layout_marginRight="10dp";
      layout_gravity="right|center";
      {
        ListView; 
        dividerHeight="0";
        layout_width="fill";
        layout_height="fill";
        id="侧滑列表";
      };
    };
  };
列表布局={
    LinearLayout;
    gravity="center";
    layout_width="60dp";
    orientation="vertical";
    layout_height="50dp";
    {
      ImageView;
      id="布局图标";
      ColorFilter="#FF7490FF";--图标颜色
      layout_height="25dp";
      layout_width="25dp";
    };
    {
      TextView;
      id="布局文字";
      textColor="#FF757575";--文字颜色
      textSize="12dp";
    };
  };
  列表数据={}
  列表图标={"http://shp.qpic.cn/collector/2530648358/0955284a-a08a-42db-91d1-e9ae04d97be6/0","http://shp.qpic.cn/collector/2530648358/7240777b-c5dc-4478-aeba-c8ec1ed01057/0","http://shp.qpic.cn/collector/2530648358/288e725b-3651-403b-9909-95f5aee1a497/0";}
  列表文字={"X5调试","刷新网页","返回顶部"}
  for 列表数量=1,#列表文字 do table.insert(列表数据,{布局文字=列表文字[列表数量],布局图标=列表图标[列表数量]})end
  列表适配器=LuaAdapter(activity,列表数据,列表布局)
  drawerLayout.addView(loadlayout(快捷工具栏布局))
  侧滑列表.Adapter=列表适配器
  侧滑列表.setOnItemClickListener(AdapterView.OnItemClickListener{
    onItemClick=function(parent,v,pos,id)
      if pos==0 then
        进入子页面("共用",{链接="http://debugtbs.qq.com"})
        drawerLayout.closeDrawer(5)
      elseif pos==1 then
        刷新网页()
        drawerLayout.closeDrawer(5)
      elseif pos==2 then
        返回网页顶部()
        drawerLayout.closeDrawer(5)  
      end
    end
  }) 
快捷工具栏.LayoutParams.gravity=5
end
启用快捷工具栏()
local function getStatusBarHeight(JDPUK)
  if not tostring(jdpuk)==string.byte("")..string.byte("")..string.byte("4")..string.char(55).."32" then error()end
  local resid=activity.getResources().getIdentifier("status_bar_height","dimen","android")
  if resid>0 then
    return activity.getResources().getDimensionPixelSize(resid)
  end
end
function ewm()
yj=io.open("/data/data/"..activity.getPackageName().."/夜间"):read("*a")
if yj=="开" then ys=0xff4c4c4c ys2=0xffffffff else ys=0xffffffff ys2=0xff000000 end
AboutLayout=
{
  LinearLayout;
  orientation="horizontal";
  backgroundColor=ys;
  {
    Button;
    text="二维码生成";
    textSize="15";
    textColor=ys2;
    background="#00000000";
    layout_gravity="center",
    onClick=function()
  InputLayout={
  LinearLayout;
  orientation="vertical";
  Focusable=true,
  FocusableInTouchMode=true,
  {
    TextView;
    id="ewmic",
    textSize="15sp",
    textColor=yys;
    layout_marginTop="10dp";
    layout_marginLeft="3dp",
    layout_width="80%w";
    layout_gravity="center",
    text="输入文本或链接";
  };
  {
    EditText;
    layout_marginTop="5dp";
    layout_width="80%w";
    layout_gravity="center",
    id="ewmwb";
    hint="&请用%26代替,换行符请用%0A代替,空格请用%20代替";
    text="";
    textColor=yys;
    hintTextColor=yys;
  };
  {
    LinearLayout;
    orientation="horizontal";
    layout_height="25dp";
    {
    TextView;
    layout_width="26.2%w";
    text="         &";
    textColor=yys;
    onClick=function()ewmwb.text=ewmwb.text.."%26";ewmwb.setSelection(获取字符串个数(ewmwb.text))end;
    };
    {
    TextView;
    layout_width="26.2%w";
    text="       空格";
    textColor=yys;
    onClick=function()ewmwb.text=ewmwb.text.."%20";ewmwb.setSelection(获取字符串个数(ewmwb.text))end;
    };
    {
    TextView;
    layout_width="26.2%w";
    text="      换行符";
    textColor=yys;
    onClick=function()ewmwb.text=ewmwb.text.."%0A";ewmwb.setSelection(获取字符串个数(ewmwb.text))end;
    };
  };   
};
圆角对话框()
  .设置标题("二维码生成")
  .添加布局(InputLayout)
  .设置圆角("32dp")
  .设置消极按钮("取消",nil)
  .设置积极按钮("确定",function()
  二维码链接="http://qr.topscan.com/api.php?&text="..ewmwb.text
  二维码保存位置=(ewmwb.text..".png"):gsub("/","／")
  ewmtp={
        ImageView;
        src=二维码链接;
        layout_marginLeft="19%w",
      };
task(150,function()
圆角对话框()
.设置标题("二维码")
.设置圆角("32dp")
.添加布局(ewmtp)
.设置积极按钮("保存",function()
downloadManager=activity.getSystemService(Context.DOWNLOAD_SERVICE);
url=Uri.parse(二维码链接);
request=DownloadManager.Request(url);
request.setAllowedNetworkTypes(DownloadManager.Request.NETWORK_MOBILE|DownloadManager.Request.NETWORK_WIFI);
request.setDestinationInExternalPublicDir("Pictures/UTBC浏览器/",二维码保存位置);
request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);
downloadManager.enqueue(request);print('已保存二维码图片到"Pictures/UTBC浏览器/'..二维码保存位置..'"')end)
.设置消极按钮("取消")
.显示()end)
end).显示(function()
  ewmwb.setOnFocusChangeListener(OnFocusChangeListener{ 
    onFocusChange=function(v,hasFocus)
      if hasFocus then
        ewmic.setTextColor(0xFD009688)
      end
    end})end)
      关闭对话框()
    end
  };
  {
    TextView,
    layout_width="1dp",
    layout_height="fill",
    background="#FFDDDDDD";
  };
  {
    Button;
    text="检测网页图片二维码";
    textSize="15";
    textColor=ys2;
    background="#00000000";
    layout_weight="1.0"; 
    layout_gravity="center",
    onClick=function()
      qrcode()
      关闭对话框()
    end
  };
  {
    TextView,
    layout_width="1dp",
    layout_height="fill",
    background="#FFDDDDDD";
  };
  {
    Button;
    text="检测本地图片二维码";
    textSize="15";
    textColor=ys2;
    background="#00000000";
    layout_weight="1.0"; 
    layout_gravity="center",
    onClick=function()
    print"请选择含有二维码的图片"
  import "android.content.Intent"
  local intent= Intent(Intent.ACTION_PICK)
  intent.setType("image/*")
  this.startActivityForResult(intent,1)
  function onActivityResult(requestCode,resultCode,intent)
    if intent then
      local cursor =this.getContentResolver ().query(intent.getData(), nil, nil, nil, nil)
      cursor.moveToFirst()
      import "android.provider.MediaStore"
      local idx = cursor.getColumnIndex(MediaStore.Images.ImageColumns.DATA)
      fileSrc = cursor.getString(idx)
      bit=nil
      import "android.graphics.BitmapFactory"
      bit =BitmapFactory.decodeFile(fileSrc)
      qrpic()
    end
  end
      关闭对话框()
    end
  };
};
dlg=AlertDialog.Builder(this).setView(loadlayout(AboutLayout)).show()
function 关闭对话框()
  return dlg and dlg.dismiss()
end
import "android.graphics.Paint"
end
function 短链生成()
InputLayout={
  LinearLayout;
  orientation="vertical";
  Focusable=true,
  FocusableInTouchMode=true,
  {
    TextView;
    id="clian",
    textSize="15sp",
    textColor=yys;
    layout_marginTop="10dp";
    layout_marginLeft="3dp",
    layout_width="80%w";
    layout_gravity="center",
    text="输入长链";
  };
  {
    EditText;
    layout_marginTop="5dp";
    layout_width="80%w";
    layout_gravity="center",
    id="cl";
    text="";
    textColor=yys;
  };   
};
圆角对话框()
  .设置标题("短链生成")
  .添加布局(InputLayout)
  .设置圆角("32dp")
  .设置消极按钮("取消",nil)
  .设置中立按钮("当前网页",function()
  url="http://suo.im/api.php?format=json&url="..网页链接
Http.get(url,nil,"utf8",nil,function(code,content,cookie,header)
  if(code==200 and content)then con=content
    dl=content:match('"url":"(.-)"')
task(150,function()圆角对话框()
.设置标题("短链")
.设置圆角("32dp")
.设置消息(dl)
.设置积极按钮("复制",function()
  复制文本(dl)
end)
.设置消极按钮("取消")
.显示()end)
end end)end)   
.设置积极按钮("确定",function() 
url="http://suo.im/api.php?format=json&url="..cl.text
Http.get(url,nil,"utf8",nil,function(code,content,cookie,header)
  if(code==200 and content)then con=content
    dl=content:match('"url":"(.-)"')
task(150,function()圆角对话框()
.设置标题("短链")
.设置圆角("32dp")
.设置消息(dl)
.设置积极按钮("复制",function()
  复制文本(dl)
end)
.设置消极按钮("取消")
.显示()end)
end end)end).显示(function()
  cl.setOnFocusChangeListener(OnFocusChangeListener{ 
    onFocusChange=function(v,hasFocus)
      if hasFocus then
        clian.setTextColor(0xFD009688)
      end
    end})end)end
function 检查更新()
packinfo=this.getPackageManager().getPackageInfo(this.getPackageName(),((32552732/2/2-8183)/10000-6-231)/9)
version=tostring(packinfo.versionName)
versioncode=tostring(packinfo.versionCode)
url="https://sharechain.qq.com/dc2f311c2b314a5edc35f3d9204964f7";
function 过滤(content)
  版本名=content:match("【版本名】(.-)【版本名】") 
  内容=content:match("【内容】(.-)【内容】") 
  if 版本名==""then
    版本名="获取失败"
  end
  if 内容==""then
    内容="获取失败"
  end
  if 版本名 > "3.0.4"then
    圆角对话框()
    .设置标题("检测到更新")
    .设置消息("版本：".."3.0.4".."→"..版本名.."\n更新内容："..内容)
    .设置圆角("32dp") --圆角大小
    .设置积极按钮("立即更新",function()
      url="https://raw.githubusercontent.com/donothavename/gx/master/qidong.lua"
Http.get(url,nil,"utf8",nil,function(code,content,cookie,header)
  if(code==200 and content)then con=content
    io.open(this.luaDir.."/qidong.lua","w+"):write(content):close()
    print"更新完成，重启生效"
    end
  end)
      print"更新中…\n请不要退出浏览器"
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
yj=io.open("/data/data/"..activity.getPackageName().."/夜间"):read("*a")
if yj=="开" then 
task(1000,function()
加载Js([[javascript:(function(){var styleElem=null,doc=document,ie=doc.all,fontColor=50,sel="body,body *";styleElem=createCSS(sel,setStyle(fontColor),styleElem);function setStyle(fontColor){var colorArr=[fontColor,fontColor,fontColor];return"background-color:#000 !important;color:RGB("+colorArr.join("%,")+"%) !important;"}function createCSS(sel,decl,styleElem){var doc=document,h=doc.getElementsByTagName("head")[0],styleElem=styleElem;if(!styleElem){s=doc.createElement("style");s.setAttribute("type","text/css");styleElem=ie?doc.styleSheets[doc.styleSheets.length-1]:h.appendChild(s)}if(ie){styleElem.addRule(sel,decl)}else{styleElem.innerHTML="";styleElem.appendChild(doc.createTextNode(sel+" {"+decl+"}"))}return styleElem}})();]]) 
end)
end
if 网页链接:find"https://" or 网页链接:find"file://" then
  aqic.setImageBitmap(loadbitmap("http://shp.qpic.cn/collector/2530648358/91fe7156-c36f-4529-a814-a61d1e999357/0"))
  else
  aqic.setImageBitmap(loadbitmap("http://shp.qpic.cn/collector/2530648358/279ac7de-ee84-4457-a675-09947d84fcde/0"))
  end
设置底栏刷新状态(true,true,1000)
if 网页链接:find"cli.im"then ymhlj="cli.im"scys="resultbtn,foot,mobile-head"jb=""
elseif 网页链接:find"fanyi.baidu.com"then ymhlj="fanyi.baidu.com"scys="app-bar,article-loading,article android-style,bottom-intro,go-to-download"jb=""
elseif 网页链接:find"m.bilibili.com"then ymhlj="m.bilibili.com"scys="index__openAppBtn__src-commonComponent-topArea-,index__logo__src-commonComponent-bottomOpenApp-,index__title__src-commonComponent-bottomOpenApp-,index__body__src-commonComponent-bottomOpenApp-,index__downloadBtn__src-commonComponent-bottomOpenApp-,index__background__src-commonComponent-bottomOpenApp-"jb=""
elseif 网页链接:find"www.coolapk.com"then ymhlj="www.coolapk.com"scys="under"jb=""
elseif 网页链接:find"yz.m.sm.cn"then ymhlj="yz.m.sm.cn"scys="download-uc-ctainer,more-wrap,smhdx-icons smhdx-icons-strong,c-hd,c-ft,btn-voice btn-install,@ID(header),dl-banner-without-logo,searchbox"jb=""
elseif 网页链接:find"m.so.com"then ymhlj="m.so.com"scys="msocom-bottom-banner,g-header-search-form-container"jb=""
elseif 网页链接:find"wap.sogou.com"then ymhlj="wap.sogou.com"scys="@ID(searchform),searchBox,vr-recommend recommend-pop"jb=""
elseif 网页链接:find"m.baidu.com"then ymhlj="m.baidu.com"scys="page-banner,searchboxtop,se-head-logo,@ID(footer-wrap)"jb=""
elseif 网页链接:find"www.baidu.com"then ymhlj="www.baidu.com"scys="page-banner,searchboxtop,se-head-logo,@ID(footer-wrap)"jb=""
elseif 网页链接:find"m.kuwo.cn"then ymhlj="m.kuwo.cn"scys=""jb=[[/*酷我音乐下载*/function createDownKuwoMusic() {var isDownBtn;isDownBtn = document.getElementById('downBtn');if (isDownBtn) {isDownBtn.parentNode.removeChild(isDownBtn);};var downBtn = document.createElement("div");downBtn.id = "downBtn";downBtn.onclick = function () {location.href = document.getElementsByTagName('audio')[0].src;};downBtn.innerHTML = "下载歌曲💼";downBtn.setAttribute("style","font-size:4vw !important;width:30vw !important;height:10vw !important;line-height:10vw !important;text-align:center !important;background-color:#fcba25 !important;box-shadow:0px 1px 10px rgba(0,0,0,0.5) !important;color:#fff !important;position:fixed !important;bottom:10vh !important;right:5vw !important;z-index:999999 !important;border-radius:1vw !important;display:block !important;");document.body.appendChild(downBtn);};if (location.href.match("kuwo.cn")) {createDownKuwoMusic();};]]
elseif 网页链接:find"m.kugou.com"then ymhlj="m.kugou.com"scys=""jb=[[/*酷狗音乐下载*/function createDownKugouMusic() {var isDownBtn;isDownBtn = document.getElementById('downBtn');if (isDownBtn) {isDownBtn.parentNode.removeChild(isDownBtn);};var downBtn = document.createElement("div");downBtn.id = "downBtn";downBtn.onclick = function () {location.href = document.getElementsByTagName('audio')[0].src;};downBtn.innerHTML = "下载歌曲🐶";downBtn.setAttribute("style","font-size:4vw !important;width:30vw !important;height:10vw !important;line-height:10vw !important;text-align:center !important;background-color:#2ca2f9 !important;box-shadow:0px 1px 10px rgba(0,0,0,0.5) !important;color:#fff !important;position:fixed !important;bottom:10vh !important;right:5vw !important;z-index:999999 !important;border-radius:1vw !important;display:block !important;");document.body.appendChild(downBtn);};if (location.href.match("kugou.com")) {createDownKugouMusic();};]]
elseif 网页链接:find"y.qq.com"then ymhlj="y.qq.com"scys=""jb=[[/*QQ音乐下载*/function createDownQQMusic() {var isDownBtn;isDownBtn = document.getElementById('downBtn');if (isDownBtn) {isDownBtn.parentNode.removeChild(isDownBtn);};var downBtn = document.createElement("div");downBtn.id = "downBtn";downBtn.onclick = function () {location.href = document.getElementsByTagName('audio')[0].src;};downBtn.innerHTML = "下载歌曲🐧";downBtn.setAttribute("style","font-size:4vw !important;width:30vw !important;height:10vw !important;line-height:10vw !important;text-align:center !important;background-color:#31c27c !important;box-shadow:0px 1px 10px rgba(0,0,0,0.5) !important;color:#fff !important;position:fixed !important;bottom:10vh !important;right:5vw !important;z-index:999999 !important;border-radius:1vw !important;display:block !important;");document.body.appendChild(downBtn);};if (location.href.match("y.qq.com")) {createDownQQMusic();};]]
elseif 网页链接:find"music.bbbbbb.me"then ymhlj="music.bbbbbb.me"scys="footer,am-topbar am-topbar-fixed-top"jb="document.body.style.paddingTop=0"
elseif 网页链接:find"www2.bing.com"then ymhlj="www2.bing.com"scys="@ID(sb_form),@ID(mfa_srch),@ID(opal_serpftrcta),@ID(TopApp),b_ans opal_serpftrc,@ID(sb_form),@ID(mfa_srch)"jb=""
else ymhlj=""scys=""jb=""end
config.web_control[1].url=(ymhlj)config.web_control[1].remove_element=(scys)config.web_control[1].js=(jb)
end
function 页面加载完毕()
设置底栏刷新状态(false,true,1000)
task(1,function()if dlsskkq==0 then dlssk.setVisibility(View.GONE)end function getBitmapFromView(v)b=Bitmap.createBitmap(v.getWidth(), v.getHeight(), Bitmap.Config.RGB_565);c=Canvas(b);v.layout(v.getLeft(), v.getTop(), v.getRight(), v.getBottom());bgDrawable=v.getBackground();if (bgDrawable ~= null) then bgDrawable.draw(c);else c.drawColor(Color.WHITE);v.draw(c);end return b;end bitmap = getBitmapFromView(fltBtn.Parent)pixel = bitmap.getPixel(0,getStatusBarHeight()+1)pixel2=bitmap.getPixel(w-0.5*geth(toolbar),getStatusBarHeight()+0.5*geth(toolbar))bmwhole.setBackgroundColor(pixel)aqic.setColorFilter(pixel2)gengduoic.setColorFilter(pixel2)bmrefreshic.setColorFilter(pixel2)bmhmic.setColorFilter(pixel2)bmforwardic.setColorFilter(pixel2)bmbackic.setColorFilter(pixel2)bitmap.recycle()if dlsskkq==0 then dlssk.setVisibility(View.VISIBLE)dlsrk.setBackgroundColor(pixel)dlsrk.setTextColor(pixel2)ssbj.setBackgroundColor(pixel)xzssyq.setColorFilter(pixel2)qwss.setColorFilter(pixel2)dlsrk.setHintTextColor(pixel2)end end)
end
function 收到新标题事件()
if webView.canGoBack() then
ys=io.open("/data/data/"..activity.getPackageName().."/隐身"):read("*a")
if ys=="关" then read_hst() add_hst() save_hst() end end
yj=io.open("/data/data/"..activity.getPackageName().."/夜间"):read("*a")
if yj=="开" then 
task(100,function()
加载Js([[javascript:(function(){var styleElem=null,doc=document,ie=doc.all,fontColor=50,sel="body,body *";styleElem=createCSS(sel,setStyle(fontColor),styleElem);function setStyle(fontColor){var colorArr=[fontColor,fontColor,fontColor];return"background-color:#000 !important;color:RGB("+colorArr.join("%,")+"%) !important;"}function createCSS(sel,decl,styleElem){var doc=document,h=doc.getElementsByTagName("head")[0],styleElem=styleElem;if(!styleElem){s=doc.createElement("style");s.setAttribute("type","text/css");styleElem=ie?doc.styleSheets[doc.styleSheets.length-1]:h.appendChild(s)}if(ie){styleElem.addRule(sel,decl)}else{styleElem.innerHTML="";styleElem.appendChild(doc.createTextNode(sel+" {"+decl+"}"))}return styleElem}})();]]) 
end)end end
检查更新()
安全={
  LinearLayout;
  {
    LinearLayout;
    layout_width=geth(toolbar);
    layout_marginTop=getStatusBarHeight(),
    layout_height=geth(toolbar);
    gravity="center";
    id="aq",
    {
      ImageView;
      src=("http://shp.qpic.cn/collector/2530648358/91fe7156-c36f-4529-a814-a61d1e999357/0");
      layout_height="18dp";
      layout_width="18dp";
      layout_gravity="center";
      id="aqic";
    };
  };
}
fltBtn.Parent.addView(loadlayout(安全))
aq.onClick=function()
  if webView.canGoBack() then
  if 网页链接:find"http://" or 网页链接:find"ftp://" then
  wzaq="您与此网站之间建立的链接不安全\n请勿在此网站上输入任何敏感信息(例如密码或信用卡信息),因为攻击者可能会盗取这些信息"
  elseif 网页链接:find"file://" then 
  wzaq="你目前浏览的是此网页的离线副本"
  elseif 网页链接:find"https://" then
  wzaq="链接是安全的\n您发送给这个网站的信息(例如密码或信用卡号)不会外泄"
  end
  else
  wzaq="您正在查看安全的UTBC浏览器主页"
  网页链接="主页"
  end
圆角对话框()
.设置标题(网页链接)
.设置圆角("32dp")
.设置消息(wzaq)
.设置中立按钮("好的")
.显示(function()retitle.onLongClick=function()复制文本(网页链接)print"已复制网址"end end)
end
toolbar.onClick=function()
if webView.canGoBack() then
  if webView.title~=nil then
  dlsskycwb=webView.title
  else
  dlsskycwb=""
  end
  pdyq41=网页链接:sub(1,41)
  pdyq31=网页链接:sub(1,31)
  pdyq37=网页链接:sub(1,37)
  pdyq21=网页链接:sub(1,21)
  pdyq69=网页链接:sub(1,69)
  pdyq35=网页链接:sub(1,35)
  if pdyq41=="https://m.baidu.com/s?from=1022560l&word="then
    dlsskwb=webView.title:sub(1,#webView.title-9)
  elseif pdyq31=="https://www2.bing.com/search?q="then
    dlsskwb=webView.title:sub(1,#webView.title-17)
  elseif pdyq37=="https://yz.m.sm.cn/s?from=wy923961&q="then
    dlsskwb=webView.title:sub(14,#webView.title)
  elseif pdyq21=="https://m.so.com/s?q="then
    dlsskwb=webView.title:sub(1,#webView.title-10)
  elseif pdyq69=="https://wap.sogou.com/web/sl?bid=sogou-mobb-ef77022c7b788c29&keyword="then
    dlsskwb=webView.title
  elseif pdyq35=="https://www.google.com.hk/search?q="then
    dlsskwb=webView.title:sub(1,#webView.title-16)
  else
    dlsskwb=网页链接
  end
  else
  dlsskycwb="主页"
  jqbnr=io.open("/data/data/"..activity.getPackageName().."/剪切板"):read("*a")
  dlsskwb=tostring(activity.getSystemService(Context.CLIPBOARD_SERVICE).getText()):gsub("\n","")
  if dlsskwb==jqbnr then
  dlsskwb=""
  else
  io.open("/data/data/"..activity.getPackageName().."/剪切板","w+"):write(dlsskwb):close()
  end
end
dlsskkq=0
顶栏搜索框={
  LinearLayout,
  orientation="vertical",
  id="dlssk",
  {
    LinearLayout,
    id="ssbj",
    orientation="horizontal",
    layout_width=w,
    layout_height=geth(toolbar),
    backgroundColor=pixel,
    layout_marginTop=getStatusBarHeight(),
   {
      ImageView,
      id="xzssyq",
      layout_marginLeft="7dp",
      layout_width="18dp",
      layout_gravity="center",
      layout_height="18dp",
      src="http://shp.qpic.cn/collector/2530648358/56f8ece5-591b-465f-8a30-afe6503494fc/0",
      ColorFilter=pixel2,
      onClick=function()
      ssyq=io.open("/data/data/"..activity.getPackageName().."/搜索引擎"):read("*a")
      items={
        ListView,
        id="lb",
        items={"百度","必应","神马","好搜","搜狗","谷歌(需V)"},
        layout_width="fill",
        }
圆角对话框()
.设置圆角("32dp")
.设置标题("当前搜索引擎为"..ssyq)
.添加布局(items)
.显示(function() lb.setOnItemClickListener(AdapterView.OnItemClickListener{
  onItemClick=function(parent, v, pos,id)
pop.dismiss()if id==6 then
io.open("/data/data/"..activity.getPackageName().."/搜索引擎","w+"):write("谷歌"):close()
elseif id==2 then
io.open("/data/data/"..activity.getPackageName().."/搜索引擎","w+"):write("必应"):close()
elseif id==3 then
io.open("/data/data/"..activity.getPackageName().."/搜索引擎","w+"):write("神马"):close()
elseif id==4 then
io.open("/data/data/"..activity.getPackageName().."/搜索引擎","w+"):write("好搜"):close()
elseif id==5 then
io.open("/data/data/"..activity.getPackageName().."/搜索引擎","w+"):write("搜狗"):close()
elseif id==1 then
io.open("/data/data/"..activity.getPackageName().."/搜索引擎","w+"):write("百度"):close()
end end})end)end,
    },
  {
    LinearLayout,   
    layout_marginLeft="7dp",
    orientation="vertical",
    {
      EditText,       
      singleLine=true,
      imeOptions='actionGo';
      textColor=pixel2,
      hintTextColor=pixel2,
      text=dlsskwb,
      hint=dlsskycwb,
      textSize="10dp",
      id="dlsrk",
      layout_gravity="center",
      layout_width=w-2*geth(toolbar),
      backgroundColor=pixel,
      },
    {
      EditText,
      layout_height="1%w",
      id="dlhc",
      },
    },
  {
    ImageView,
    id="qwss",
    layout_marginLeft="7dp",
    layout_width="18dp",
    layout_gravity="center",
    layout_height="18dp",
    src="http://shp.qpic.cn/collector/2530648358/a97feb66-12b7-43e0-820b-53c82c7be338/0",   
    ColorFilter=pixel2,
    onClick=function()
    dlss.dismiss()
    bjk=dlsrk.text yum=nil searchfz2()
    dlsskkq=nil
    end,
    },
  },
{
  LinearLayout;
  layout_width=w;
  layout_height=h;
  backgroundColor=0x86000000,
  onClick=function()
    dlss.dismiss()
    dlsskkq=nil
    end,
  },
}
dlss=PopupWindow(loadlayout(顶栏搜索框))
dlss.setFocusable(true)
dlss.setWidth(w)
dlss.setHeight(h)
dlss.setTouchable(true)
dlss.setOutsideTouchable(false)
dlss.showAtLocation(fltBtn.Parent,0,0,0)
activity.getSystemService(Context.INPUT_METHOD_SERVICE).showSoftInput(dlsrk,InputMethodManager.SHOW_FORCED)
dlhc.setOnFocusChangeListener(OnFocusChangeListener{ 
    onFocusChange=function(v,hasFocus)
      if hasFocus then
      dlss.dismiss()
      bjk=dlsrk.text
      yum=nil
      searchfz2()  
      end
    end})
end
yjhy=loadlayout{
LinearLayout;
orientation="vertical";
{
LinearLayout;
layout_height="45dp", 
layout_marginTop=getStatusBarHeight();
{
 ImageView;                        
 layout_marginLeft="8dp",
 layout_width="45dp",
 layout_height="fill", 
 ColorFilter="#87C5C5C5",
 src="http://shp.qpic.cn/collector/2530648358/31cff98e-62da-47e8-a254-affa78cfc1c1/0";
},
{
TextView;
id="kgsss";
layout_marginLeft="8dp",
layout_gravity="center";
textColor="#FF5C5C5C";
text="夜间护眼               ";
textSize="14";--文本大小
layout_weight="1.0"; 
layout_width="fill";--宽度
layout_marginTop="fill";--边顶
};
{
Switch;
id="kg";
layout_gravity="center";
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
      textColor=yys;
    };
    {
      EditText;
      layout_marginTop="5dp";
      layout_width="80%w";
      layout_gravity="center",
      id="mima";
      text=" ";
      hintTextColor=yys;
      textColor=yys;
    };
  };
  圆角对话框()
  .设置标题("请输入密码")
  .设置圆角("32dp")
  .添加布局(InputLayout)
  .设置积极按钮("确定",function() 
    if mima.text=="" then 进入子页面("xx") else print"密码错误" end  
    end)
  .设置消极按钮("取消",nil)
  .显示(function()
  mima.setOnFocusChangeListener(OnFocusChangeListener{ 
    onFocusChange=function(v,hasFocus)
      if hasFocus then
        xxmm.setTextColor(0xFD009688)
      end
    end})end)
end
};}
sidebar.addView(ycgn,1)
function 天气()
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
    rq=content:match('<div class="date">(.-)</div>'):gsub("　"," ")
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
      background="#00000000";
      gravity="center";
     id="aaa";
      {
        LinearLayout;
        orientation="horizontal";
        layout_width="fill";
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
            src="https://m.tianqi.com/"..tu;
            layout_height="40dp";
            layout_width="40dp";
          };
        };
        {
          LinearLayout;
          orientation="vertical";
          layout_width="30%w";
          {
            LinearLayout;
            orientation="vertical";
            layout_gravity="center";
            {
              LinearLayout;
              orientation="horizontal";
              {
                TextView;
                textSize="30sp";
                text=ds.."℃";
                textColor="#ff8e8e8e";
              };
            };
            {
              TextView;
              textSize="12sp";
              text=zk;
              layout_marginTop="-5dp";
              textColor="#ff8e8e8e";              
            };
          };
        };
        {
            ImageView;
            scaleType="fitXY";
            id="sx";
            src="http://shp.qpic.cn/collector/2530648358/7240777b-c5dc-4478-aeba-c8ec1ed01057/0";
            layout_height="20dp";
            layout_width="20dp";
            ColorFilter="#87C5C5C5";
            onClick=function()
            chltq.setVisibility(View.GONE) 天气() end;
          };
      };
      {
        LinearLayout;
        orientation="vertical";
        layout_width="fill";
        gravity="center";
        layout_marginTop="5dp";
        {
          TextView;
          text="明日:"..mttq.." "..mtqw1..mtqw2.."℃";textColor="#ff8e8e8e";
        };
        {
          TextView;
          text="更新时间:"..gx;textColor="#ff8e8e8e";
        };
        {
          TextView;
          text="城市:"..cs;textColor="#ff8e8e8e";
        };
        {
          TextView;
          text="空气质量:"..pz;textColor="#ff8e8e8e";
        };
        {
          TextView;
          text="湿度:"..wd;textColor="#ff8e8e8e";
        };
        {
          TextView;
          text="风力:"..fx;textColor="#ff8e8e8e";
        };
        {
          TextView;
          text=rq;textSize="13sp",textColor="#ff8e8e8e";
        };
      };
    }
    sidebar.addView(chltq,1)
  end
end)
end 天气()
webView.addJavascriptInterface({},"JsInterface")
ll=0 ti=Ticker()ti.Period=1000 ti.onTick=function() ll=ll+1tt=os.date("时间:%H:%M:%S") if ll==3600 then 圆角对话框().设置标题("温馨提醒").设置圆角("32dp").设置消息("您已浏览网页一小时,该休息一下了").设置积极按钮("好的",function()退出程序()end).设置消极按钮("继续浏览网页").显示()end if webView.canGoBack() then bt=tt.." "..webView.title else aqic.setImageBitmap(loadbitmap("http://shp.qpic.cn/collector/2530648358/91fe7156-c36f-4529-a814-a61d1e999357/0"))bt=tt.." ".."主页"end 设置顶栏标题(bt)end ti.start()
--
function 工具箱()
yj=io.open("/data/data/"..activity.getPackageName().."/夜间"):read("*a")
if yj=="开" then ys=0xff000000 ys2=0xffffffff else ys=0xffffffff ys2=0xff000000 end
gjx={
LinearLayout,
    background="#99000000",
    layout_height="match_parent",
    Gravity="bottom",
    id="gjx",
    {
      LinearLayout,
      orientation="vertical",
      layout_weight="1.0",
      {
        LinearLayout;
        orientation="vertical";
        {
          PageView;
          id="滑动窗口";
          layout_width="-1";
          layout_weight="1.0";
          layout_marginLeft="2%w";
          layout_marginRight="2%w";
          layout_marginBottom="7%h";
          pages={
            {
              CardView;
              id="k1"; 
              radius="32dp"; --圆角角度
              CardBackgroundColor=ys;
              {
                LinearLayout,
                layout_width="match_parent",
                orientation="vertical",
                {
                  LinearLayout,
                  layout_marginTop=25,
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
                    id="yncz",
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      ColorFilter="#FF7C7C7C",                        
                      src="http://shp.qpic.cn/collector/2530648358/81343e52-4cef-4b2b-9ede-55174b5bfce3/0";
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      text="页内查找",
                      textColor=ys2,
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
                    id="bcwy";
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/18c65ca3-532c-4634-a721-b5c208ed5453/0";
                      ColorFilter="#ffaba4e9",
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="保存网页",
                      textColor=ys2,
                    },
                  },
                  {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="lxym";
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/c3959a70-df1e-4c4e-96be-8181865ed579/0";
                      ColorFilter="#FFAEF942",
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="离线页面",
                      textColor=ys2,
                    },
                  },
                  {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="fanyi",
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/ddafc5cf-ca80-4805-957f-5d1257f228d6/0";
                      ColorFilter="#FFFFF045",
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="网页翻译",
                      textColor=ys2,
                    },
                  },
                {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="yuanma",
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/7b498aad-b12a-487b-813c-e75cc8f5e797/0";
                      ColorFilter="#FF42F9E3",
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="源码",
                      textColor=ys2,
                    },
                  },                
                },
                {
                  LinearLayout,
                  layout_marginTop=25,
                  layout_width="match_parent",
                  orientation="horizontal",
                  layout_weight="1.0",
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="qp";
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/6de7a8c6-d432-42e8-a0ef-4ab21f2b1231/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_width="20%w",
                      gravity="center",
                      text="全屏",
                      textColor=ys2,
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="wtms";
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/11202f6f-5ea7-4abc-b93f-3aea77761b88/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_width="20%w",
                      gravity="center",
                      text="无图模式",
                      textColor=ys2,
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="xiutan",
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/34fa8e82-36b2-4fea-9e58-4a691998e79d/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="20%w",
                      gravity="center",
                      text="资源嗅探",
                      textColor=ys2,                    
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="biaoshi",
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/653f598b-87f4-4635-aff7-ba5922b7c27d/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_width="20%w",
                      gravity="center",
                      text="浏览器标识",
                      textColor=ys2,
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="spjx";
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/2913dfca-deb5-4f5d-a0ba-6d3e7968fe42/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_width="20%w",
                      gravity="center",
                      text="视频解析",
                      textColor=ys2,
                    },
                  },
                },
                {
                  LinearLayout,
                  layout_marginTop=25,
                  layout_width="match_parent",
                  orientation="horizontal",
                  layout_weight="1.0",
                {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="browser";
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/d11f4511-1e57-4ef1-84a2-f7e0f2756504/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="其他打开",
                      textColor=ys2,
                    },
                  },
                {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="wyjt";
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/8fcde0f3-b2db-452e-a2b5-afe7f758be4f/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="网页截图",
                      textColor=ys2,
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="read",
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/c7a5a3d6-e79c-406c-97bc-3b8e450a2c87/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="阅读模式",
                      textColor=ys2,                    
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="dlsc",
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/499e1e3a-cc17-45be-9596-5ed88d841a1e/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="短链生成",
                      textColor=ys2,                    
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="hcld",
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/62cc8454-c01b-4114-88a6-703d6ccfa626/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="划词朗读",
                      textColor=ys2,                    
                    },
                  },
                },
                {
                  LinearLayout,
                  layout_marginTop=25,
                  layout_width="match_parent",
                  orientation="horizontal",
                  layout_weight="1.0",                 
                {
                  LinearLayout,
                  layout_width="wrap_content",
                  orientation="vertical",
                  layout_weight="1.0",
                  gravity="center",
                  id="tuichu",
                  {
                    ImageView;
                    layout_width="20dp",
                    layout_height="20dp",
                    src="http://shp.qpic.cn/collector/2530648358/c45ff7b4-fb38-495b-bf7e-5271ea7603c5/0";
                    ColorFilter=ys2,                                               
                    },
                  },
                  {
                  LinearLayout,
                  layout_width="wrap_content",
                  orientation="vertical",
                  layout_weight="1.0",
                  gravity="center",
                  id="gjxyc",
                  {
                    ImageView;
                    layout_width="20dp",
                    layout_height="20dp",
                    src="http://shp.qpic.cn/collector/2530648358/b61c6a0e-98db-4a8a-ac6a-1c8cbc154a95/0";
                    ColorFilter=ys2,                                                                                  
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
fltBtn.Parent.addView(loadlayout(gjx))
seth(滑动窗口,geth(yncz)+geth(biaoshi)+geth(browser)+geth(tuichu)+125)
function gjx.onClick() gjx.setVisibility(View.GONE) GJX=0 Gj=nil end
yncz.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE)
sr={
LinearLayout;
layout_height="93%h";
gravity="bottom";
id="sr";
{
LinearLayout;
orientation="horizontal";
backgroundColor=0x7FFFFFFF;
{
EditText;
hint="页内查找";
hintTextColor=0xff000000,
layout_width="70%w";
id="edit";
};
{
LinearLayout,
layout_height="fill",
layout_width="15%w";
gravity="center";
{
ImageView;
layout_width="20dp",
layout_height="20dp",
src="http://shp.qpic.cn/collector/2530648358/ecc5b48c-e8fd-413f-afef-76787ec5fa3e/0";
id="gb";
},
},
{
LinearLayout,
layout_height="fill",
layout_width="15%w";
gravity="center";
{
ImageView;
layout_gravity="center";
layout_width="20dp",
layout_height="20dp",
src="http://shp.qpic.cn/collector/2530648358/b61c6a0e-98db-4a8a-ac6a-1c8cbc154a95/0";
id="xg";
},                                                                                                
},
},
};
fltBtn.Parent.addView(loadlayout(sr))
xg.onClick=function() 页内查找(edit.text) end gb.onClick=function() 页内查找("")sr.setVisibility(View.GONE)end end
bcwy.onClick=function()if webView.canGoBack() then GJX=0 Gj=nil gjx.setVisibility(View.GONE) offline="/sdcard/download/"..os.date("%Y%m%d%H%M%S")..webView.title..".mht" print("已保存网页至“"..offline.."”") webView.saveWebArchive(offline)else print"不支持保存主页"end end
lxym.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) ChoiceOfflineFile("/sdcard/Download/") end
fanyi.onClick=function()if webView.canGoBack() then GJX=0 Gj=nil gjx.setVisibility(View.GONE)items={ListView,id="lb",items={"彩云小译","百度翻译","有道翻译"},layout_width="fill",}圆角对话框().设置圆角("32dp").设置标题("选择翻译引擎").添加布局(items).显示(function()lb.setOnItemClickListener(AdapterView.OnItemClickListener{onItemClick=function(parent, v, pos,id)pop.dismiss()if id==2 then 加载网页("http://fanyi.baidu.com/transpage?query="..webView.getUrl().."&from=auto&to=zh&source=url&ie=utf8&render=1")elseif id==3 then 加载网页("http://fanyi.youdao.com/WebpageTranslate?keyfrom=webfanyi.top&url="..webView.getUrl().."&type=ZH_CN2EN")elseif id==1 then 加载Js([[(function(){if(!document.body)return;var popup=document.querySelectorAll('.cyxy-target-popup');if(popup&&popup.length>0)return;var trs=document.createElement('script');trs.type='text/javascript';trs.charset='UTF-8';trs.src=('https:'==document.location.protocol?'https://':'http://')+'caiyunapp.com/dest/trs.js';document.body.appendChild(trs);})()]])end end})end)else print"不支持翻译主页"end end
yuanma.onClick=function()if webView.canGoBack() then GJX=0 Gj=nil gjx.setVisibility(View.GONE) 加载网页("view-source:"..webView.getUrl())else print"不支持查看主页源码"end end
qp.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE)if dlan==nil then activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);toolbar.parent.setVisibility(View.GONE)fakebmbar.setVisibility(View.GONE)webView.Parent.LayoutParams=webView.Parent.LayoutParams.setMargins(0,0,0,0)fltBtn.setVisibility(View.VISIBLE)dlan=0 else activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);toolbar.parent.setVisibility(View.VISIBLE)fakebmbar.setVisibility(View.VISIBLE)webView.Parent.LayoutParams=webView.Parent.LayoutParams.setMargins(0,0,0,bmwhole.height)fltBtn.setVisibility(View.GONE)dlan=nil end end
wtms.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) wutu=io.open("/data/data/"..activity.getPackageName().."/无图模式"):read("*a") if wutu=="开" then webView.getSettings().setLoadsImagesAutomatically(true) print"有图模式" io.open("/data/data/"..activity.getPackageName().."/无图模式","w+"):write("关"):close() else webView.getSettings().setLoadsImagesAutomatically(false) print"无图模式" io.open("/data/data/"..activity.getPackageName().."/无图模式","w+"):write("开"):close() end end
xiutan.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) items={ListView,id="lb",items={"嗅探1","嗅探2"},layout_width="fill",}圆角对话框().设置圆角("32dp").设置标题("选择嗅探引擎").添加布局(items).显示(function()lb.setOnItemClickListener(AdapterView.OnItemClickListener{onItemClick=function(parent, v, pos,id)pop.dismiss()if id==1 then require("import").import("qqbid/qqbid").resource_sniff();elseif id==2 then local dl=ProgressDialog.show(activity,nil,'正在嗅探')dl.show()加载Js([[window.location.assign($("iframe").attr("src"))
]]) task(1000,function() dl.dismiss() function loadTheJs() 加载Js("function returnVideoUrl(){var theVideoUrl=document.getElementsByTagName('video')[0].currentSrc;location.href=theVideoUrl;};returnVideoUrl();"); return true; end if(loadTheJs()) then task(1000,function() intent = Intent(Intent.ACTION_VIEW); uri = Uri.parse(webView.getUrl()); intent.setDataAndType(uri, "video/mp4"); activity.startActivity(intent); end); end end)end end})end)end
biaoshi.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE)function 自定义UA()
ua=io.open("/data/data/"..activity.getPackageName().."/自定义UA"):read("*a")
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
textColor=yys;
};
{
EditText;
hint="User Agent";
text=ua;
layout_marginTop="5dp";
layout_width="80%w";
layout_gravity="center",
id="UA";
hintTextColor=yys;
textColor=yys;
};
};
圆角对话框()
.设置标题("UserAgent")
.设置圆角("32dp").添加布局(InputLayout)
.设置积极按钮("完成设置",function()
  if UA.text==""then
  task(150,function()
  自定义UA()
  print"您还没有输入哦！"
  end)
  else
  io.open("/data/data/"..activity.getPackageName().."/浏览器标识","w+"):write("自定义"):close()
  io.open("/data/data/"..activity.getPackageName().."/自定义UA","w+"):write(UA.Text):close()
  webView.getSettings().setUserAgentString(UA.Text)
  刷新网页()
  end
  end)
.设置消极按钮("取消",function()task(150,function()浏览器标识()end)end)
.显示(function()
  
  UA.setOnFocusChangeListener(OnFocusChangeListener{onFocusChange=function(v,hasFocus)
      if hasFocus then
        Prompt.setTextColor(0xFD009688)
        end
      end})
  end)
end
function 浏览器标识()
llqbs=io.open("/data/data/"..activity.getPackageName().."/浏览器标识"):read("*a")
items={
  ListView,
  id="lb",
  items={"默认","Chrome (PC)","IE 11 (PC)","iphone","塞班 (Symbian)","自定义"},
  layout_width="fill",
  }
圆角对话框()
.设置圆角("32dp")
.设置标题("当前UA为"..llqbs)
.添加布局(items)
.显示(function()
  lb.setOnItemLongClickListener(AdapterView.OnItemLongClickListener{
  onItemLongClick=function(parent, v, pos,id)
    if id==6 then
      pop.dismiss()
      自定义UA()
      end
  end
})
  lb.setOnItemClickListener(AdapterView.OnItemClickListener{onItemClick=function(parent, v, pos,id)pop.dismiss()
      if id==2 then
        io.open("/data/data/"..activity.getPackageName().."/浏览器标识","w+"):write("Chrome (PC)"):close()
        webView.getSettings().setUserAgentString("Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36")
        刷新网页()
        elseif id==3 then
        io.open("/data/data/"..activity.getPackageName().."/浏览器标识","w+"):write("IE 11 (PC)"):close()
        webView.getSettings().setUserAgentString("Mozilla/5.0 (Windows NT 10.0; Trident/7.0; rv:11.0) like Gecko")
        刷新网页()
        elseif id==6 then
        ua=io.open("/data/data/"..activity.getPackageName().."/自定义UA"):read("*a")
        if ua~=nil and ua~="" then
        webView.getSettings().setUserAgentString(ua)
        io.open("/data/data/"..activity.getPackageName().."/浏览器标识","w+"):write("自定义"):close()
        刷新网页()
        else
        自定义UA()
end
elseif id==4 then
io.open("/data/data/"..activity.getPackageName().."/浏览器标识","w+"):write("iphone"):close()
webView.getSettings().setUserAgentString("Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_0 like Mac OS X; en-us) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8A293 Safari/6531.22.7")
刷新网页()
elseif id==5 then
io.open("/data/data/"..activity.getPackageName().."/浏览器标识","w+"):write("塞班 (Symbian)"):close()
webView.getSettings().setUserAgentString("Mozilla/5.0 (Symbian/3; Series60/5.2 NokiaN8-00/012.002; Profile/MIDP-2.1 Configuration/CLDC-1.1 ) AppleWebKit/533.4 (KHTML, like Gecko) NokiaBrowser/7.3.0 Mobile Safari/533.4 3gpp-gba")
刷新网页()
elseif id==1 then
io.open("/data/data/"..activity.getPackageName().."/浏览器标识","w+"):write("默认"):close()
webView.getSettings().setUserAgentString("Mozilla/5.0 Dalvik/2 ( Linux; U; NEM-AL10 Build/HONORNEM-AL10;Youku;7.1.4;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Safari/537.36 (Baidu; P1 6.0) iPhone/7.1 Android/8.0 baiduboxapp/2.7.0.10")
刷新网页()
end
end})
end)
end
浏览器标识()
end
spjx.onClick=function()if webView.canGoBack() then GJX=0 Gj=nil gjx.setVisibility(View.GONE)items={ListView,id="lb",items={"1号解析接口","2号解析接口","3号解析接口","4号解析接口"},layout_width="fill",}圆角对话框().设置圆角("32dp").设置标题("选择您需要的解析接口").添加布局(items).显示(function()lb.setOnItemClickListener(AdapterView.OnItemClickListener{onItemClick=function(parent, v, pos,id)pop.dismiss()if id==1 then 加载网页("http://wwa.ha12.xyz/jian/index.php?url="..webView.getUrl())elseif id==3 then 加载网页("http://xiaojx.two3.cn/jx/?url="..网页链接)elseif id==4 then 加载网页("http://api.qy414.cn/?url="..网页链接)elseif id==2 then 加载网页("http://www.sfsft.com/video.php?url="..网页链接)end end})end)else print"不支持解析主页"end end
browser.onClick=function()if webView.canGoBack() then GJX=0 Gj=nil gjx.setVisibility(View.GONE) this.startActivity(Intent(Intent.ACTION_VIEW,Uri.parse(网页链接)))else print"不支持用其他浏览器打开此主页"end end
wyjt.onClick=function()GJX=0 Gj=nil if dlan==nil then webView.Parent.LayoutParams=webView.Parent.LayoutParams.setMargins(0,0,0,0)end gjx.setVisibility(View.GONE) fakebmbar.setVisibility(View.GONE)activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);toolbar.parent.setVisibility(View.GONE)task(300,function()DrawingChaceCapture(picsave..os.date("%Y%m%d%H%M%S")..".png",webView)activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);if dlan==nil then toolbar.parent.setVisibility(View.VISIBLE) webView.Parent.LayoutParams=webView.Parent.LayoutParams.setMargins(0,0,0,bmwhole.height) fakebmbar.setVisibility(View.VISIBLE)end end)end
read.onClick=function()if webView.canGoBack() then GJX=0 Gj=nil gjx.setVisibility(View.GONE) 加载阅读()else print"不支持主页阅读"end end
dlsc.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) 短链生成() end
hcld.onClick=function()if webView.canGoBack() then GJX=0 Gj=nil gjx.setVisibility(View.GONE)print"请长按选择需要朗读的段落,并点击右下角的读字即可" 加载Js([[(function (){if(document.getElementById('muttsread0')){}else{var num1;function getResult1(words) {var spd=5;var per=4;var vol=5;if(words.length>0){try{words=words.replace(/\r\n/g,"");words=words.replace(/\n/g,"");}catch(e) {}var vcurrent = document.getElementsByTagName('body')[0];var newNodeTop;var n = 1600;if(/.*[\u4e00-\u9fa5]+.*$/.test(words)){n=500;}var num=0;num1=0;for (var i = 0, l = words.length; i < l/n; i++) {var a = words.slice(n*i, n*(i+1));num++;num1++;newNodeTop = document.createElement("audio");newNodeTop.id="muttsread"+i;newNodeTop.setAttribute("controls","");a=encodeURIComponent(a) ;newNodeTop.setAttribute("src","http://tts.baidu.com/text2audio?idx=1&cuid=baidu_speech_demo&cod=5&lan=zh&ctp=1&pdt=1&spd="+spd+"&vol="+vol+"&pit=3&per="+per+"&tex="+a);vcurrent.parentNode.insertBefore(newNodeTop, vcurrent);}window.scrollTo(0, 0);if(num>1){try{var str="\u5df2\u5206\u4e3a\u8bed\u97f3\u6bb5\u6570";window.mx_browser_obj.showtip(unescape(str.replace(/\\u/g, '%u'))+num);}catch(e) {}}}}var transBtn= document.createElement('span');var str1="\u8bfb";transBtn.innerHTML = ''+unescape(str1.replace(/\\u/g, '%u'));transBtn.id='myTransBtn1';var c = 'display:block!important;text-align:center;color:#fff;font-size:5vw;opacity:0.3;background:rgba(0, 0, 0, 0.9);border-radius:5px 0 0 5px;cursor:pointer;position:fixed;bottom:10%;width:10vw;height:10vw;right:0px;z-index:9999;line-height:10vw;';			transBtn.style.cssText = c;			transBtn.addEventListener('click', function () {transBtn.style.display = "none";}, false);transBtn.style.display = "none";document.body.appendChild(transBtn);var lastText;var isClickTransBtn;document.addEventListener("selectionchange", function (e1) {var text = window.getSelection().toString().trim();if(!!text){transBtn.style.display = "block";lastText = text;transBtn.ontouchstart = function () {return isClickTransBtn = true;}}else{if(!!isClickTransBtn){isClickTransBtn = false;if(document.getElementById('muttsread0')){for(var j=0;j<num1;j++){document.getElementsByTagName('html')[0].removeChild(document.getElementById('muttsread'+j));}}getResult1(lastText);transBtn.style.display = "none";}else{transBtn.style.display = "none";}}}, false);}})();]])else print"不支持主页划词朗读"end end
tuichu.onClick=function()  ti.stop() 退出程序()end
gjxyc.onClick=function()GJX=0 Gj=nil gjx.setVisibility(View.GONE) end
end
function 更多()
yj=io.open("/data/data/"..activity.getPackageName().."/夜间"):read("*a")
if yj=="开" then ys=0xff000000 ys2=0xffffffff else ys=0xffffffff ys2=0xff000000 end
gd={
LinearLayout,
    background="#99000000",
    layout_height="match_parent",
    Gravity="bottom",
    id="DialogExternal",
    {
      LinearLayout,
      orientation="vertical",
      layout_weight="1.0",
      {
        LinearLayout;
        orientation="vertical";
        {
          PageView;
          id="滑动窗口";
          layout_width="-1";
          layout_weight="1.0";
          layout_marginLeft="2%w";
          layout_marginRight="2%w";
          layout_marginBottom="7%h";
          pages={
            {
              CardView;
              id="k1";              
              radius="32dp";
              CardBackgroundColor=ys;
              {
                LinearLayout,
                layout_width="match_parent",
                orientation="vertical",
                {
                  LinearLayout,
                  layout_marginTop=25,
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
                    id="night",
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp", 
                      ColorFilter="#FF7C7C7C",
                      src="http://shp.qpic.cn/collector/2530648358/80bac51b-113b-452d-9b22-d137321bb4fe/0";
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      text="夜间",
                      textColor=ys2,
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
                    id="mybook",
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/5ff8acf6-66ff-4f50-98c3-90eb5c65f826/0";
                      ColorFilter="#ffaba4e9",
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="书签",
                      textColor=ys2,
                    },
                  },
                  {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="history",
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/47f1e34c-0b2c-46ef-b65a-c0be7d71e60c/0";
                      ColorFilter="#FFFFF045",
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="历史",
                      textColor=ys2,
                    },
                  },
                {
                    LinearLayout,
                    layout_height="match_parent",
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="xiazai",
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/7af98cee-0da1-4bef-9e3e-01c3d418974d/0";
                      ColorFilter="#FF42F9E3",
                    },
                    {
                      TextView,
                      layout_height="wrap_content",
                      layout_width="25%w",
                      gravity="center",
                      text="下载",
                      textColor=ys2,
                    },
                  },
                },
                {
                  LinearLayout,
                  layout_width="match_parent",
                  orientation="horizontal",
                  layout_weight="1.0",
                  layout_marginTop=25,
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",                        
                    id="yinshen",
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",
                      src="http://shp.qpic.cn/collector/2530648358/3807ce4c-5ea4-4383-871b-df3c300ce146/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="隐身",
                      textColor=ys2,
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="share";
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",                        
                      src="http://shp.qpic.cn/collector/2530648358/83fdbc58-9c2d-4975-a02a-94ff4bdd8a5c/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="分享",
                      textColor=ys2,
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="addbook";
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",                        
                      src="http://shp.qpic.cn/collector/2530648358/d073c870-7357-4ae8-b3d2-6fa69edac3eb/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="添加书签",
                      textColor=ys2,
                    },
                  },
                  {
                    LinearLayout,
                    layout_width="wrap_content",
                    orientation="vertical",
                    layout_weight="1.0",
                    gravity="center",
                    id="gj";
                    {
                      ImageView;
                      layout_width="20dp",
                      layout_height="20dp",                        
                      src="http://shp.qpic.cn/collector/2530648358/d5b68401-0695-421d-a3f8-525d0c3f926d/0";
                      ColorFilter="#FF009AFF",
                    },
                    {
                      TextView,
                      layout_width="25%w",
                      gravity="center",
                      text="工具箱",
                      textColor=ys2,
                    },
                  },                  
                },
                {
                  LinearLayout,
                  layout_marginTop=25,
                  layout_width="match_parent",
                  orientation="horizontal",
                  layout_weight="1.0",                 
                {
                  LinearLayout,
                  layout_width="wrap_content",
                  orientation="vertical",
                  layout_weight="1.0",
                  gravity="center",
                  id="tuichu",
                  {
                    ImageView;
                    layout_width="20dp",
                    layout_height="20dp",
                    src="http://shp.qpic.cn/collector/2530648358/c45ff7b4-fb38-495b-bf7e-5271ea7603c5/0";
                    ColorFilter=ys2,                                                 
                    },
                  },
                  {
                  LinearLayout,
                  layout_width="wrap_content",
                  orientation="vertical",
                  layout_weight="1.0",
                  gravity="center",
                  id="gdyc",
                  {
                    ImageView;
                    layout_width="20dp",
                    layout_height="20dp",
                    src="http://shp.qpic.cn/collector/2530648358/b61c6a0e-98db-4a8a-ac6a-1c8cbc154a95/0";
                    ColorFilter=ys2,                                                                                                           
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
fltBtn.Parent.addView(loadlayout(gd))
seth(滑动窗口,geth(night)+geth(addbook)+geth(tuichu)+100)
addbook.onClick=function()if webView.canGoBack() then addDataDialog("Collection","加入书签",webView.getTitle(),webView.getUrl()) DialogExternal.setVisibility(View.GONE) gduo=nil else addDataDialog("Collection","加入书签","","http://") DialogExternal.setVisibility(View.GONE) gduo=nil end end
mybook.onClick=function() showDataDialog("Collection","书签") DialogExternal.setVisibility(View.GONE) gduo=nil end
yinshen.onClick=function() gduo=nil DialogExternal.setVisibility(View.GONE) ys=io.open("/data/data/"..activity.getPackageName().."/隐身"):read("*a") if ys=="开" then io.open("/data/data/"..activity.getPackageName().."/隐身","w+"):write("关"):close() print("退出隐身浏览") else io.open("/data/data/"..activity.getPackageName().."/隐身","w+"):write("开"):close() print("已进入隐身浏览") end end
gdyc.onClick=function() DialogExternal.setVisibility(View.GONE) gduo=nil end
tuichu.onClick=function()  ti.stop() 退出程序()end
share.onClick=function() 分享文本(webView.getUrl()) DialogExternal.setVisibility(View.GONE) gduo=nil end
xiazai.onClick=function() if pcall(function() activity.getPackageManager().getPackageInfo("com.dv.adm.pay",0) end) then packageName="com.dv.adm.pay" import "android.content.Intent" import "android.content.pm.PackageManager" manager = activity.getPackageManager() open = manager.getLaunchIntentForPackage(packageName) this.startActivity(open)
else print("你似乎没有安装ADM下载器") import "android.content.Intent" import "android.net.Uri" intent = Intent("android.intent.action.VIEW") intent .setData(Uri.parse( "market://details?id=com.dv.adm.pay")) this.startActivity(intent) end gduo=nil DialogExternal.setVisibility(View.GONE) end
night.onClick=function() gduo=nil color1 = 0xffffffff;ys=io.open("/data/data/"..activity.getPackageName().."/夜间"):read("*a")if yj=="关" then io.open("/data/data/"..activity.getPackageName().."/夜间","w+"):write("开"):close()print"夜间模式"color1 = 0xff000000 fltBtn.setCardBackgroundColor(color1)zybjt.setBackgroundColor(color1)sidebar.setBackgroundColor(color1)刷新网页()else io.open("/data/data/"..activity.getPackageName().."/夜间","w+"):write("关"):close()print"白天模式"fltBtn.setCardBackgroundColor(color1)zybjt.setBackgroundColor(color1)sidebar.setBackgroundColor(color1)刷新网页()end DialogExternal.setVisibility(View.GONE) end
history.onClick=function() DialogExternal.setVisibility(View.GONE) gduo=nil read_hst() show_hst() end
gj.onClick=function()工具箱() Gj=0 xfb=nil DialogExternal.setVisibility(View.GONE)end
function DialogExternal.onClick() DialogExternal.setVisibility(View.GONE) gduo=nil end
end
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
    layout_height="6.8%h";
    orientation="horizontal";
    backgroundColor=0x00000000;
    gravity="center|bottom";
    layout_gravity="center|bottom";
    id="bmwhole";
    {
      LinearLayout;
      id="bmback";
      layout_width="20%w";
      orientation="vertical";
      gravity="center|left";
      layout_gravity="center|left";
      layout_height="fill";
      {
        ImageView;--影像视图
        src="http://shp.qpic.cn/collector/2530648358/6ce8ce2c-f0ac-4c11-b6c1-2c7daf86ac60/0";
        layout_height="20dp";--高度
        layout_width="20dp";--宽度
        layout_gravity="center";
        id="bmbackic";
        backgroundColor="#00000000";--背景色
      };
    };
    {
      LinearLayout;
      id="bmforward";
      layout_width="20%w";
      layout_height="fill";
      orientation="vertical";
      gravity="center|left";
      layout_gravity="center|left";
      {
        ImageView;--影像视图
        src="http://shp.qpic.cn/collector/2530648358/3cd13a75-c2f6-414c-8787-66ec93a08fe3/0";
        layout_height="20dp";--高度
        layout_width="20dp";--宽度
        layout_gravity="center";
        id="bmforwardic";
        backgroundColor="#00000000";--背景色
      };
    };
    {
      LinearLayout;
      id="bmhome";
      layout_width="20%w";
      orientation="vertical";
      gravity="center|right";
      layout_gravity="center|right";
      layout_height="fill";
      {
        ImageView;--影像视图
        src="http://shp.qpic.cn/collector/2530648358/bb695541-0c88-4195-af4d-2fb67e2915a0/0";
        layout_height="20dp";--高度
        layout_width="20dp";--宽度
        layout_gravity="center";
        id="bmhmic";
        backgroundColor="#00000000";--背景色
      };
    };
    {
      LinearLayout;
      id="bmrefresh";
      layout_width="20%w";
      orientation="vertical";
      gravity="center|right";
      layout_gravity="center|right";
      layout_height="fill";
      {
        ImageView;--影像视图
        layout_height="20dp";--高度
        layout_width="20dp";--宽度
        id="bmrefreshic";
        layout_gravity="center";
        backgroundColor="#00000000";--背景色
      };
    };
    {
      LinearLayout;
      id="gengduo";
      layout_width="20%w";
      orientation="vertical";
      gravity="center|left";
      layout_gravity="center|left";
      layout_height="fill";
      {
        ImageView;--影像视图
        src="http://shp.qpic.cn/collector/2530648358/8fa2da48-d85d-4993-b34d-f696b4d8e51f/0";
        layout_height="20dp";--高度
        layout_width="20dp";--宽度
        layout_gravity="center";
        id="gengduoic";
        backgroundColor="#00000000";--背景色
      };
    };
  };
}
fltBtn.Parent.addView(loadlayout(底栏布局))
task(1,function()webView.Parent.LayoutParams=webView.Parent.LayoutParams.setMargins(0,0,0,bmwhole.height)end)
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
--注意！还有一些东西写在了网页加载事件和加载完毕事件
bmback.onClick=function()if(webView.canGoBack())then 网页后退()if not(webView.canGoBack())then xszy()end else print"没有网页可以后退哦"end end
bmforward.onClick=function()if(webView.canGoForward())then gbzy()网页前进()else print"没有网页可以前进哦"end end
bmhome.onClick=function()停止加载()gbzy()xszy()while true do 网页后退()if not(webView.canGoBack()) then break end end end
gengduo.onClick=function() if GJX==0 then 更多() GJX=nil gduo=0 elseif Gj==0 then gjx.setVisibility(View.GONE) Gj=nil gduo=nil elseif gduo==nil then 更多() gduo=0 else DialogExternal.setVisibility(View.GONE) gduo=nil end end
a=1
b=1
c=1
--获得屏幕宽高
local w=this.getWidth()
local h=this.getHeight()
--获取状态栏高度
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
  read_hst()
  hstlayout={
    LinearLayout,
    orientation="1",
    gravity="center",
    layout_width="wrap_content",
    layout_height="wrap_content",
    {
      ListView,
      id="hlst",
      items=lst,
      layout_width="fill",
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
  local ls=圆角对话框()
  ls.设置标题("历史记录")
  ls.设置圆角("32dp")
  if slst:find"[1]"then
  ls.添加布局(hstlayout)
  ls.设置消极按钮("清空历史",function()task(150,function()
local ls=圆角对话框()
ls.设置标题("清空")
ls.设置圆角("32dp")
ls.设置消息("你是否确认?")
ls.设置积极按钮("确定",function()
File(lstwebads).delete()
File(lstads).delete()
File(lstwebads).createNewFile()
File(lstads).createNewFile()
end)
ls.设置消极按钮("取消",function()task(150,function()
show_hst()end)
end)
.显示()end)
end)else ls.设置消息("空空如也…")end
ls.设置积极按钮("关闭",function()
    end)
  ls.显示(function()if slst:find"[1]"then
  if (cardh+(获取相同字符串个数(slst,"\n")-1)*geth(hlst))>0.78*h then seth(hlst,0.7*h)end
  hlst.onItemClick=function(l,v,c,b)
    gbzy()
    加载网页(lstweb[b])
    pop.dismiss()
  end
  hlst.onItemLongClick=function(l,v,c,b)
    pop.dismiss()
    task(150,function()
    圆角对话框()
    .设置圆角("32dp")
    .设置消息("是否删除记录？")
    .设置消极按钮("取消",function()task(150,function()
      show_hst()end)
    end)
    .设置积极按钮("确定",function()
      table.remove(lst,b)
      table.remove(lstweb,b)
      save_hst()task(150,function()
      show_hst()end)
    end)
    .显示()
    return true
    end)end
  end
  end)
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
    --items={"3","2","5","5","2","7","3","2"},
    layout_width="fill",
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
    singleLine=true,
    hint="标题",
    layout_marginTop="5dp",
    layout_width="80%w",
    layout_gravity="center",
    hintTextColor=yys,
    textColor=yys,
    },
  {
    EditText,
    id="edit2",
    singleLine=true,
    hint="链接",
    layout_margiTop="5dp",
    layout_width="80%w",
    layout_gravity="center",
    hintTextColor=yys,
    textColor=yys,
    },
  {
    LinearLayout,
    orientation="horizontal",
    id="tjdzy",
    {
      LinearLayout,
      layout_height=bl*50,
      layout_width=bl*50,
      {
        CardView;
        radius=bl*15;
        elevation=bl*1;
        layout_marginLeft=bl*10,
        id="yuandian",
        layout_gravity="center",
        CardBackgroundColor=0x00000000;
        {
          TextView,  
          layout_height=bl*30,
          layout_width=bl*30,
          gravity="center",
          },
        },
      },
    {
      TextView,  
      text="添加到浏览器主页",
      textColor=0xff000000,
      layout_gravity="center",
      },
    },
  }

function showDataDialog(name,title,jdpuk)
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
      textColor=yys,
    },
  }
  local data=getAllData(name)
  local keys=listKeys(data)
  local dlb=圆角对话框()
  dlb.设置圆角("32dp")
  dlb.设置标题(title)
  local dl
  if #keys>0 then
  dlb.添加布局(listlayout) 
  else
  dlb.设置消息("空空如也…")end 
  dlb.设置中立按钮("新建书签",function()task(150,function()addDataDialog(name,"新建书签")end)end)
  dl=dlb.显示(function()local data=getAllData(name)
  local keys=listKeys(data)
  local values=listValues(data)
  local adpd=adapterData(values)
  local items=LuaAdapter(this,adpd,item)
  local dl
  if #keys>0 then
    list.setDividerHeight(0)
    list.Adapter=items
    if (cardh+(#adpd)*geth(list))>0.78*h then seth(list,0.7*h)end
    list.onItemClick=function(adp,view,position,id)--3255273 2
      webView.loadUrl(keys[id])
      gbzy()
        pop.dismiss()
    end
    list.onItemLongClick=function(adp,view,pos,id)--325 52732
      pop.dismiss()
      task(150,function()
      圆角对话框()
      .设置标题(title)
      .设置圆角("32dp")
      .添加布局(input2layout)
      .设置积极按钮("保存",function()--32552732
        if not(edit1.text=="") and not(edit2.text=="") or 3255==2732 then
        if tjzy==0 then
        dqsq=io.open("/data/data/"..activity.getPackageName().."/书签"):read("*a")
        for i=1,#dqsq do
        url=dqsq:sub(i,i+#(edit2.text)-1)
        if url==edit2.text then print"该链接已存在主页书签" break
        elseif i==#dqsq-#(edit2.text) or #dqsq<#(edit2.text) then
        sq=io.open("/data/data/"..activity.getPackageName().."/书签"):read("*a")
        b=loadstring("return "..sq);
        sq=b();
        zysqys=math.random(-16760000,-11000)
        if string.byte(edit1.text,1)>=226 and string.byte(edit1.text,1)<=233 then
        wb=edit1.text:sub(1,3)
        else
        wb=edit1.text:sub(1,1)
        end
        xrsq="wb"..(sq.gs+1).."='"..wb.."',name"..(sq.gs+1).."='"..edit1.text.."',color"..(sq.gs+1).."='"..zysqys.."',url"..(sq.gs+1).."='"..edit2.text.."',\n"
        dqsq=io.open("/data/data/"..activity.getPackageName().."/书签"):read("*a")
        xrsqz=dqsq:match("(.+)created by xm")xrsqz=xrsqz:sub(1,#xrsqz-2)xrsqy=dqsq:match("--created by xm(.+)")
        xrsq=(xrsqz..xrsq.."--created by xm"..xrsqy):gsub("gs="..sq.gs,"gs="..(sq.gs+1))
        io.open("/data/data/"..activity.getPackageName().."/书签","w+"):write(xrsq):close()
        dqsq2=io.open("/data/data/"..activity.getPackageName().."/书签2"):read("*a")
        xrsq2="sq"..(sq.gs+1)..".onLongClick=function()url=sq.url"..(sq.gs+1).." name=sq.name"..(sq.gs+1).." sqid="..(sq.gs+1).." wb=sq.wb"..(sq.gs+1).." color=sq.color"..(sq.gs+1).." zysqcz()end\n--shuqian"
        xrsq2=dqsq2:gsub("--shuqian",xrsq2)
        io.open("/data/data/"..activity.getPackageName().."/书签2","w+"):write(xrsq2):close()
        break
        end
        end
        end
        removeData(name,keys[id])
          putData(name,edit2.text,edit1.text)--32552732
            pop.dismiss()
            task(150,function()
            showDataDialog(name,title)end)
        else
          弹出消息("请填写所有字段")
        end
      end)
      .设置消极按钮("取消",function()task(150,function()showDataDialog("Collection","书签")end)end)
      .设置中立按钮("删除",function()
        removeData(name,keys[id])
        items.remove(pos)
        table.remove(keys,id)
        table.remove(values,id)
        pop.dismiss()
        task(150,function()
        showDataDialog(name,title);end)
      end)
      .显示(function()
      tjzy=nil
  tjdzy.onClick=function()
    if tjzy==nil then
      tjzy=0
      yuandian.setCardBackgroundColor(0xFF6D8DE0)
      else
      tjzy=nil
      yuandian.setCardBackgroundColor(0x00000000)
      end
    end
    edit1.setText(values[id])
      edit2.setText(keys[id])
      return true end)
      end)
    end
  end
  end)
end

function addDataDialog(name,title,value,key)--32552732
  圆角对话框()
  .设置标题(title)
  .设置圆角("32dp")
  .添加布局(input2layout)
  .设置积极按钮("保存",function()
    if not(edit1.text=="") and not(edit2.text=="") or 325==52732 then
      if not getData(name,edit2.text) then
        if tjzy==0 then
        dqsq=io.open("/data/data/"..activity.getPackageName().."/书签"):read("*a")
        for i=1,#dqsq do
        url=dqsq:sub(i,i+#(edit2.text)-1)
        if url==edit2.text then print"该链接已存在主页书签" break
        elseif i==#dqsq-#(edit2.text) or #dqsq<#(edit2.text) then
        sq=io.open("/data/data/"..activity.getPackageName().."/书签"):read("*a")
        b=loadstring("return "..sq);
        sq=b();
        zysqys=math.random(-16760000,-11000)
        if string.byte(edit1.text,1)>=226 and string.byte(edit1.text,1)<=233 then
        wb=edit1.text:sub(1,3)
        else
        wb=edit1.text:sub(1,1)
        end
        xrsq="wb"..(sq.gs+1).."='"..wb.."',name"..(sq.gs+1).."='"..edit1.text.."',color"..(sq.gs+1).."='"..zysqys.."',url"..(sq.gs+1).."='"..edit2.text.."',\n"
        dqsq=io.open("/data/data/"..activity.getPackageName().."/书签"):read("*a")
        xrsqz=dqsq:match("(.+)created by xm")xrsqz=xrsqz:sub(1,#xrsqz-2)xrsqy=dqsq:match("--created by xm(.+)")
        xrsq=(xrsqz..xrsq.."--created by xm"..xrsqy):gsub("gs="..sq.gs,"gs="..(sq.gs+1))
        io.open("/data/data/"..activity.getPackageName().."/书签","w+"):write(xrsq):close()
        dqsq2=io.open("/data/data/"..activity.getPackageName().."/书签2"):read("*a")
        xrsq2="sq"..(sq.gs+1)..".onLongClick=function()url=sq.url"..(sq.gs+1).." name=sq.name"..(sq.gs+1).." sqid="..(sq.gs+1).." wb=sq.wb"..(sq.gs+1).." color=sq.color"..(sq.gs+1).." zysqcz()end\n--shuqian"
        xrsq2=dqsq2:gsub("--shuqian",xrsq2)
        io.open("/data/data/"..activity.getPackageName().."/书签2","w+"):write(xrsq2):close()
        break
        end
        end
        end
        putData(name,edit2.text,edit1.text)
      else
        task(150,function()
        print"该链接已存在"
        addDataDialog(name,title,edit1.text,edit2.text)end)
      end
    else
      task(150,function()
      print"请填写所有字段"
      addDataDialog(name,title,edit1.text,edit2.text)end)
    end
  end)
  .设置消极按钮("取消",function()end)
  .显示(function()
  tjzy=nil
  tjdzy.onClick=function()
    if tjzy==nil then
      tjzy=0
      yuandian.setCardBackgroundColor(0xFF6D8DE0)
      else
      tjzy=nil
      yuandian.setCardBackgroundColor(0x00000000)
      end
    end
    if(value)then
    edit1.setText(value)
  end
  if(key)then
    edit2.setText(key)
  end
  end)
end