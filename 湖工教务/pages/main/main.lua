--

-- ****默认导入包****
require "import"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
-- ****不需要请删除****

-- @param data 侧滑栏列表的全部数据
-- @param recyclerView 侧滑栏列表控件
-- @param listIndex 点击的列表索引（点击的是第几个列表）
-- @param clickIndex 点击的项目索引（点击的第几个项目）
function onDrawerListItemClick(data, recyclerView, listIndex, itemIndex)
  --侧滑栏列表的数据是二维结构，所以需要先获取到点击项目所在列表的数据
  local listData = data.get(listIndex);
  --获取到所在列表的数据后获取点击项目的数据
  local itemData = listData.get(itemIndex);
  --最后获取到点击的项目的标题
  local itemTitle = itemData.getTitle();

  --TODO：
  print(itemTitle)
end

-- @param keyword 搜索栏输入的文本
-- @description 顶栏搜索功能回调事件
function onSearchEvent(keyword)
  --TODO：
  print("Search keyword:"..keyword)
end
import "android.widget.TextView"
import "com.google.android.material.card.MaterialCardView"
import "android.text.InputType"
import "com.bumptech.glide.Glide"
import "android.widget.LinearLayout"
import "androidx.constraintlayout.widget.Group"
import "java.security.acl.Group"
import "androidx.constraintlayout.widget.ConstraintLayout"
import "androidx.transition.Styleable$TransitionManager"
import "androidx.transition.TransitionManager"
import "android.transition.TransitionManager"
import "android.view.WindowManager"
import "android.content.res.ColorStateList"
import "android.widget.ImageView"
import "androidx.constraintlayout.widget.ConstraintSet"
import "android.graphics.Typeface"
import "android.view.View"
import "android.view.ViewTreeObserver"
import "android.widget.EditText"
import "android.graphics.Rect"
--悬浮按钮点击事件
function onFloatingActionButtonClick(v)
  print("floating action button click")
end
if activity.getPackageName()=="net.fusionapp" then
  R=luajava.bindClass "net.fusion64j.R"
 else
  R=luajava.bindClass "net.fusion64j.core.R"
end
-- 推荐阅读 https://blog.csdn.net/m0_37796683/article/details/103366626
-- https://juejin.cn/post/6844903465110487053?utm_source=gold-miner&utm_medium=readme&utm_campaign=github#comment

-- 简言：ConstraintLayout是可以灵活设置其内控件位置和大小的ViewGroup。

-- 支持API 9 (Gingerbread)及以上，官方后续仍将对其API和功能进行扩展。

-- 请先了解ConstraintLayout，否则你可能改都不会改

-- 先导入该控件
local ConstraintLayout = luajava.bindClass "androidx.constraintlayout.widget.ConstraintLayout"

import "android.text.InputType"
import "android.graphics.Typeface"
import "android.content.res.ColorStateList"

local Glide = luajava.bindClass "com.bumptech.glide.Glide"

--手册里不要全屏
local WindowManager = luajava.bindClass "android.view.WindowManager"
activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0x0)

-- 一些图片资源
local Picture_Resources_table = {
  Welcome_logo = "https://wework.qpic.cn/wwpic3az/514374_DMXSSPXpQ-CkxgP_1741531088/0",
  Welcome_qq = "",
  logo = "https://wework.qpic.cn/wwpic3az/899713_yZng7eC-SCqpKAW_1741531296/0",
  qq = "",
  arrow_right = "keyboard_arrow_right",
}

function Miui ()
  --转载，抱歉丢失原作者信息qwq



  function Dialog(title,content,mButton1,mButton2,mButton3,mButton1_,mButton2_,mButton3_)
    import "com.google.android.material.bottomsheet.BottomSheetDialog"
    mBottomSheetDialog=BottomSheetDialog(activity);
    mBottomSheetDialog.setContentView(loadlayout({
      LinearLayout;
      layout_height="match_parent";
      BackgroundDrawable=BottomSheetDialogDrawable;
      layout_width="match_parent";
      orientation="vertical";
      {
        LinearLayout;
        layout_marginTop="5dp";
        layout_width="-1";
        gravity="center";
        BackgroundColor="#FFFFFFFF";
        {
          MaterialCardView;
          layout_height="8dp";
          CardElevation="0dp";
          radius="4dp";
          layout_margin="5dp";
          layout_width="75dp";
          CardBackgroundColor="#FFF4F5F7";
        };
      };
      {
        TextView;
        layout_width="-1";
        layout_height="-2";
        textSize="20sp";
        layout_marginTop="9dp";
        layout_marginLeft="24dp";

        layout_marginRight="24dp";
        layout_marginBottom="0dp";
        Text=title;
        textStyle="bold";
        textColor=0xFF000000;
      };
      {
        ScrollView;
        layout_width="match_parent";
        layout_height="-2";
        layout_weight=100;
        {
          TextView;
          id="_view";
          textIsSelectable=true;
          text=content;
          paddingTop="8dp";

          paddingBottom="8dp";
          paddingRight="24dp";
          paddingLeft="24dp";
          layout_width="match_parent";
        };
      };
      {
        LinearLayout;
        layout_height="-2";
        layout_weight=1;
        layout_width="match_parent";
        orientation="vertical";
        {
          MaterialCardView;
          layout_weight=1;
          layout_height="50dp";
          CardElevation="0dp";
          radius="25dp";
          layout_marginTop="10dp";
          layout_marginRight="10dp";
          layout_marginLeft="20dp";
          layout_width="-1";
          CardBackgroundColor=0xff0984fd;
          onClick=mButton3_;
          {
            LinearLayout;
            layout_height="match_parent";
            gravity="center";
            layout_width="match_parent";
            focusable="true";
            {
              TextView;
              textStyle="bold";
              Text=mButton3;

              textColor=0xFFFFFFFF;
              textSize="15sp";
            };
          };
        };
        {
          LinearLayout;
          layout_height="-2";
          layout_width="match_parent";
          orientation="horizontal";
          {
            MaterialCardView;
            layout_weight=1;
            layout_height="50dp";
            CardElevation="0dp";
            radius="25dp";
            layout_marginTop="20dp";
            layout_marginRight="10dp";
            layout_marginLeft="20dp";
            layout_marginBottom="20dp";
            layout_width="-1";
            CardBackgroundColor=0xfff5f5f5;
            onClick=mButton1_;
            {
              LinearLayout;
              layout_height="match_parent";
              gravity="center";
              layout_width="match_parent";
              focusable="true";
              {
                TextView;
                textStyle="bold";
                Text=mButton1;
                textColor=0xff585858;

                textSize="15sp";
              };
            };
          };
          {
            MaterialCardView;
            layout_weight=1;
            layout_height="50dp";
            CardElevation="0dp";
            radius="25dp";
            layout_marginTop="20dp";
            layout_marginRight="20dp";
            layout_marginLeft="10dp";
            layout_marginBottom="20dp";
            layout_width="-1";
            CardBackgroundColor=0xfff5f5f5;
            onClick=mButton2_;
            {
              LinearLayout;
              layout_height="match_parent";
              gravity="center";
              layout_width="match_parent";
              focusable="true";
              {
                TextView;
                textStyle="bold";
                Text=mButton2;
                textColor=0xff585858;
                textSize="15sp";

              };
            };
          };
        };
      };
    })).getWindow().setDimAmount(0.5);
    if Build.VERSION.SDK_INT >= 21 then
      mBottomSheetDialog.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
    end
    mBottomSheetDialog.getWindow().findViewById(R.id.design_bottom_sheet).setBackgroundResource(android.R.color.transparent);
    mBottomSheetDialog.show();
    if content==nil then
      _view.setVisibility(View.GONE)
    end
  end
end
function 提示消息(内容)
  import "com.google.android.material.snackbar.Snackbar"
  local anchor=activity.findViewById(android.R.id.content)
  Snackbar.make(anchor, 内容, Snackbar.LENGTH_LONG).show()
end

Miui()
function delete()
  if 学号=="" and 密码==""

   else
    Dialog("删除当前账号",[[确定删除该账号吗？]],"手滑了","取消","确定",
    function()
      mBottomSheetDialog.dismiss()
      --这个位置编写事件
    end,
    function()
      mBottomSheetDialog.dismiss()

    end,
    function()
      存储应用数据("学号","")
      存储应用数据("密码","")
      存储应用数据("删除","开")
      Username_EditText.setText("")
      Password_EditText.setText("")
      mBottomSheetDialog.dismiss()

    end)

  end

end



local Group = luajava.bindClass "androidx.constraintlayout.widget.Group"

-- 布局
local layout = {
  ConstraintLayout,
  id="Constraint_Layout",
  layout_width="match_parent",
  layout_height="match_parent",
  padding="16dp",
  {
    ImageView,
    id="Logo_ImageView",
    src=Picture_Resources_table.Welcome_logo,
    layout_width="wrap_content",
    layout_height="195dp",
  },
  {
    TextView,
    id="copyright",
    text="By Cталин",
    layout_width="wrap_content",
    layout_height="55dp",
  },
  {
    Group,
    id="group",
    -- visibility="gone",
    layout_width="wrap_content",
    layout_height="wrap_content",
  },
  {
    MaterialCardView,
    layout_width = "fill",
    layout_height = "wrap",
    radius = "30dp",
    cardElevation = "0dp",
    strokeWidth = "0dp",
    id = "Username_View",
    cardBackgroundColor = "#FFF2F3F7",
    {
      LinearLayout,
      orientation = "horizontal",
      layout_width = "fill",
      layout_height = "wrap",
      {
        EditText,
        layout_width = 'fill',
        layout_height = 'wrap',
        inputType='number',
        singleLine=true,
        gravity = "center",
        textSize = '18sp',
        paddingTop = "16dp",
        paddingBottom = "16dp",
        layout_marginLeft = "40dp",
        layout_marginRight = "7dp",
        layout_weight = "1",
        textColor = "#FF03081B",
        id = "Username_EditText",
        Hint = '学号/工号',
        HintTextColor = "#FFB0B2BF",
        background = "#00000000",
      },
      {
        ImageView,
        layout_gravity = "center",
        layout_width = "17dp",
        layout_marginRight = "16dp",
        layout_height = "17dp",
        visibility = 4,
        id = "Username_Delete",
        colorFilter = "#FFD4D4DC",
      },
    },
  },
  {
    MaterialCardView,
    layout_width = "fill",
    layout_height = "wrap",
    radius = "30dp",
    cardElevation = "0dp",
    strokeWidth = "0dp",
    id = "Password_View",
    cardBackgroundColor = "#FFF2F3F7",
    {
      LinearLayout,
      orientation = "horizontal",
      layout_width = "fill",
      layout_height = "wrap",
      {
        EditText,
        layout_width = 'fill',
        layout_height = 'wrap',
        singleLine=true,
        gravity = "center",
        textSize = '18sp',
        paddingTop = "16dp",
        paddingBottom = "16dp",
        layout_marginLeft = "40dp",
        layout_marginRight = "7dp",
        layout_weight = "1",
        textColor = "#FF03081B",
        id = "Password_EditText",
        Hint = '输入密码',
        HintTextColor = "#FFB0B2BF",
        background = "#00000000",
      },
      {
        ImageView,
        layout_gravity = "center",
        layout_width = "17dp",
        layout_marginRight = "16dp",
        layout_height = "17dp",
        visibility = 4,
        id = "Password_Delete",
        colorFilter = "#FFD4D4DC",
      },
    },
  },
  {
    MaterialCardView,
    layout_width = "wrap",
    layout_height = "wrap",
    radius = "50dp",
    cardElevation = "0dp",
    strokeWidth = "0dp",
    id = "Login_Button",
    cardBackgroundColor = "#FFE8EBF2",
    {
      ImageView,
      layout_margin = "20dp",
      src=Picture_Resources_table.arrow_right,
      layout_width="30dp",
      layout_height="30dp",
      colorFilter = "#ffffffff",
    },
  },
  {
    TextView,
    id="ForgotPassword_TextView",
    text="自动登录:开",
    textColor = "#FF03081B",
    typeface=Typeface.DEFAULT_BOLD, --加粗
    onClick=function()--单击事件
      --联系QQ(1545433540)
      自动登录=获取应用数据("自动登录")
      if 自动登录


        if 自动登录=="开"
          ForgotPassword_TextView.Text="自动登录:关"
          存储应用数据("自动登录","关")
          提示消息("已关闭自动登录")
         else
          ForgotPassword_TextView.Text="自动登录:开"
          提示消息("开启自动登录成功")

          存储应用数据("自动登录","开")
        end

       else

        ForgotPassword_TextView.Text="自动登录:关"
        存储应用数据("自动登录","关")

      end


      --退出程序()
    end,--单击事件结束
    layout_width="wrap_content",
    layout_height="wrap_content",
  },
  {
    View,
    id="Text_Divider",
    layout_width="5px",
    layout_height="0dp",
    backgroundColor='#FFE5E5E5',
  },
  {
    TextView,
    id="Register_TextView",
    text="删除账号",
    textColor = "#FF03081B",
    onClick=function()--单击事件

      delete()
    end,--单击事件结束
    typeface=Typeface.DEFAULT_BOLD, --加粗
    layout_width="wrap_content",
    layout_height="wrap_content",
  },
}


activity.setContentView(loadlayout(layout))
function 存储应用数据(key,value)
  activity.setSharedData(key,value)
  return true
end

function 获取应用数据(key)
  local data = activity.getSharedData(key)
  return data
end
自动登录=获取应用数据("自动登录")
if 自动登录 then
  --弹出消息("内容")

  if 自动登录=="开"

    ForgotPassword_TextView.Text="自动登录:开"

   else

    ForgotPassword_TextView.Text="自动登录:关"

  end


 else


end
function dp2px(dp)
  return math.floor(dp*activity.resources.displayMetrics.density+0.5)
end

-- 设置引用的控件ID列表
local referencedIds = {Username_View.getId(),Password_View.getId(),Login_Button.getId(),
  ForgotPassword_TextView.getId(),Text_Divider.getId(),Register_TextView.getId()}
-- 添加到group 方便后期统一隐藏管理
group.setReferencedIds(referencedIds)

-- 我们先将这些隐藏掉
group.setVisibility(View.GONE)

-- 一个动画的API
local TransitionManager = luajava.bindClass "androidx.transition.TransitionManager"

-- 创建 ConstraintSet 对象
local ConstraintSet = luajava.bindClass "androidx.constraintlayout.widget.ConstraintSet"
local constraintSet = ConstraintSet()

-- 克隆约束布局（即已经定义好的布局）
constraintSet.clone(Constraint_Layout)
学号 = 获取应用数据("学号")
密码=获取应用数据("密码")
存储应用数据("删除","关")
--print(学号,密码)

Password_EditText.setText(密码)
Username_EditText.setText(学号)

-- 添加约束条件
-- LOGO图片的
constraintSet.connect(Logo_ImageView.getId(), ConstraintSet.TOP, ConstraintSet.PARENT_ID, ConstraintSet.TOP, dp2px(170))
constraintSet.connect(Logo_ImageView.getId(), ConstraintSet.START, ConstraintSet.PARENT_ID, ConstraintSet.START, 0)
constraintSet.connect(Logo_ImageView.getId(), ConstraintSet.END, ConstraintSet.PARENT_ID, ConstraintSet.END, 0)
-- LOGO图片旁边的QQ那张图片
constraintSet.connect(copyright.getId(), ConstraintSet.START, ConstraintSet.PARENT_ID, ConstraintSet.START, 0)
constraintSet.connect(copyright.getId(), ConstraintSet.END, ConstraintSet.PARENT_ID, ConstraintSet.END, 0)
constraintSet.connect(copyright.getId(), ConstraintSet.BOTTOM, ConstraintSet.PARENT_ID, ConstraintSet.BOTTOM, dp2px(135))

-- 应用修改后的布局
constraintSet.applyTo(Constraint_Layout)

-- 延迟一秒后
task(1100,function()
  -- 设置新的图片。
  Glide.with(activity).load(Picture_Resources_table.logo).into(Logo_ImageView)
  copyright.setVisibility(View.GONE)
  --
  -- 加一个动画
  TransitionManager.beginDelayedTransition(Constraint_Layout)

  -- 我们先将这些隐藏掉的显示出来
  for _,v in pairs(referencedIds) do
    constraintSet.setVisibility(v,ConstraintSet.VISIBLE)
  end

  -- LOGO图片的
  constraintSet.constrainHeight(Logo_ImageView.getId(),dp2px(54))
  constraintSet.constrainWidth(Logo_ImageView.getId(),dp2px(54))
  constraintSet.connect(Logo_ImageView.getId(), ConstraintSet.TOP, ConstraintSet.PARENT_ID, ConstraintSet.TOP, dp2px(125))

  -- 设置一下链式
  constraintSet.setHorizontalChainStyle(Logo_ImageView.getId(), ConstraintSet.CHAIN_PACKED)

  -- 账号输入框的
  constraintSet.connect(Username_View.getId(), ConstraintSet.TOP, Logo_ImageView.getId(), ConstraintSet.BOTTOM, dp2px(32))
  constraintSet.connect(Username_View.getId(), ConstraintSet.START, ConstraintSet.PARENT_ID, ConstraintSet.START, dp2px(21))
  constraintSet.connect(Username_View.getId(), ConstraintSet.END, ConstraintSet.PARENT_ID, ConstraintSet.END, dp2px(21))
  -- 密码输入框
  constraintSet.connect(Password_View.getId(), ConstraintSet.TOP, Username_View.getId(), ConstraintSet.BOTTOM, dp2px(10))
  constraintSet.connect(Password_View.getId(), ConstraintSet.START, ConstraintSet.PARENT_ID, ConstraintSet.START, dp2px(21))
  constraintSet.connect(Password_View.getId(), ConstraintSet.END, ConstraintSet.PARENT_ID, ConstraintSet.END, dp2px(21))
  -- 登录按钮
  constraintSet.connect(Login_Button.getId(), ConstraintSet.TOP, Password_View.getId(), ConstraintSet.BOTTOM, dp2px(50))
  constraintSet.connect(Login_Button.getId(), ConstraintSet.START, ConstraintSet.PARENT_ID, ConstraintSet.START, 0)
  constraintSet.connect(Login_Button.getId(), ConstraintSet.END, ConstraintSet.PARENT_ID, ConstraintSet.END, 0)
  -- 忘记密码文本
  constraintSet.connect(ForgotPassword_TextView.getId(), ConstraintSet.BOTTOM, ConstraintSet.PARENT_ID, ConstraintSet.BOTTOM, dp2px(40))
  constraintSet.connect(ForgotPassword_TextView.getId(), ConstraintSet.START, ConstraintSet.PARENT_ID, ConstraintSet.START, 0)
  constraintSet.connect(ForgotPassword_TextView.getId(), ConstraintSet.END, Text_Divider.getId(), ConstraintSet.START, 0)
  -- 中间分隔线
  constraintSet.connect(Text_Divider.getId(), ConstraintSet.START, ForgotPassword_TextView.getId(), ConstraintSet.END, 0)
  constraintSet.connect(Text_Divider.getId(), ConstraintSet.END, Register_TextView.getId(), ConstraintSet.START, 0)
  constraintSet.connect(Text_Divider.getId(), ConstraintSet.BOTTOM, ForgotPassword_TextView.getId(), ConstraintSet.BOTTOM, dp2px(3))
  constraintSet.connect(Text_Divider.getId(), ConstraintSet.TOP, Register_TextView.getId(), ConstraintSet.TOP, dp2px(3))
  -- 注册账号文本
  constraintSet.connect(Register_TextView.getId(), ConstraintSet.START, Text_Divider.getId(), ConstraintSet.END, 0)
  constraintSet.connect(Register_TextView.getId(), ConstraintSet.BOTTOM, ForgotPassword_TextView.getId(), ConstraintSet.BOTTOM, 0)
  constraintSet.connect(Register_TextView.getId(), ConstraintSet.END, ConstraintSet.PARENT_ID, ConstraintSet.END, 0)

  -- 设置一下链式
  constraintSet.setHorizontalChainStyle(ForgotPassword_TextView.getId(), ConstraintSet.CHAIN_SPREAD)

  -- 应用修改后的布局
  constraintSet.applyTo(Constraint_Layout)
end)
-- 监听账号输入框
Username_EditText.addTextChangedListener({
  onTextChanged = function(s, start, before, count)
    if s.length() > 0 then
      if Password_EditText.text~="" then
        -- 当密码输入框不为空的时候更改颜色
        Login_Button.setCardBackgroundColor(0xFF00CAFC)
      end
      -- 将密码删除按钮显示出来
      Username_Delete.visibility = 0
     else
      -- 隐藏
      Username_Delete.visibility = 4
      -- 更改登录按钮颜色为灰色
      Login_Button.setCardBackgroundColor(0xFFE8EBF2)
    end
  end
})
-- 设置输入框光标颜色
.getTextCursorDrawable().setTintList(ColorStateList.valueOf(0x8803081B))

-- 设置删除按钮图片资源
Username_Delete.setImageResource(R.drawable.material_ic_clear_black_24dp)
-- 设置点击事件 将账号输框清空
.onClick = function(v)
  Username_EditText.setText("")
end

function Login(a, b)
  -- 确保每个参数都不是 nil，防止出错

  -- 使用转义后的字符串创建 JavaScript 代码
  local jsCode = string.format([[
        window.onload = function() {
            // 输出调试信息
            console.log("学号元素:", document.getElementById("xhNb"));
            console.log("输入框元素:", document.getElementsByTagName("input")[1]);
            console.log("按钮元素:", document.getElementsByTagName("button")[0]);

            // 填充学号和密码字段
            var xhInput = document.getElementById("xhNb");
            xhInput.value = "%s";  // 设置学号
            simulateTyping(xhInput, "%s");  // 模拟学号输入

            var passwordInput = document.getElementsByTagName("input")[1];
            passwordInput.value = "%s";  // 设置密码
            simulateTyping(passwordInput, "%s");  // 模拟密码输入

            // 模拟点击提交按钮，使用延时避免被阻止
            setTimeout(function() {
                document.getElementsByTagName("button")[0].click();
            }, 500);  // 延迟 500 毫秒点击
        };

        // 模拟键盘输入
        function simulateTyping(inputElement, value) {
            inputElement.value = '';  // 清空输入框
            for (var i = 0; i < value.length; i++) {
                var event = new KeyboardEvent('keydown', {
                    'key': value[i],
                    'code': 'Key' + value[i].toUpperCase(),
                    'bubbles': true
                });
                inputElement.dispatchEvent(event);
                inputElement.value += value[i];  // 更新输入框的值
                var inputEvent = new Event('input', { 'bubbles': true });
                inputElement.dispatchEvent(inputEvent);
            }
        }
    ]], a, a, b, b) -- 第一个参数是学号 (a)，第二个是学号 (a)，第三个是密码 (b)，第四个是密码 (b)

  -- 输出 jsCode，调试用
  -- print("生成的 JavaScript 代码：")
  --print(jsCode)

  -- 进入子页面并传递 JS 代码


  进入子页面("login", {"https://jw.hnit.edu.cn/dist/#/", jsCode})
end
import "android.graphics.Paint"
copyright.getPaint().setFlags(Paint.UNDERLINE_TEXT_FLAG)

copyright.onClick=function()
  --print("关注一下作者叭")
  import "android.content.Intent"
  import "android.net.Uri"
  url="https://github.com/StalinDev54/"
  viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  return true
end

-- 下面这些跟上面一模一样，抄的
Password_EditText.addTextChangedListener({
  onTextChanged = function(s, start, before, count)
    if s.length() > 0 then
      Password_Delete.visibility = 0
      if Username_EditText.text~="" then
        Login_Button.setCardBackgroundColor(0xFF00CAFC)
      end
     else
      Password_Delete.visibility = 4
      Login_Button.setCardBackgroundColor(0xFFE8EBF2)
    end
  end
})
-- 设置密码输入框类行为密码
.setInputType(InputType.TYPE_CLASS_TEXT|InputType.TYPE_TEXT_VARIATION_PASSWORD)
.getTextCursorDrawable().setTintList(ColorStateList.valueOf(0x8803081B))


Password_Delete.setImageResource(R.drawable.material_ic_clear_black_24dp)
.onClick = function(v)
  Password_EditText.setText("")
end


-- 登录按钮的点击事件
Login_Button.onClick = function(v)
  if Username_EditText.getText().toString() ~= "" and
    Password_EditText.getText().toString() ~= "" then
    --print(Username_EditText.getText(),
    --Password_EditText.getText())

    --print(type(pass))

    存储应用数据("学号",Username_EditText.getText().toString()
    )
    存储应用数据("密码",Password_EditText.getText().toString()
    )





    -- password=获取应用数据("密码")

    退出页面()
    Login(Username_EditText.getText().toString()
    ,Password_EditText.getText().toString()
    )


    --print(name)


  end
end



-- 下面做一个，当输入法弹出时，登录按钮往上移
import "android.graphics.Rect"
local rootViewVisibleHeight = 0
-- 监听布局树的变化
Constraint_Layout.getViewTreeObserver().addOnGlobalLayoutListener(ViewTreeObserver.OnGlobalLayoutListener{
  onGlobalLayout=function ()
    local r = Rect()
    Constraint_Layout.getWindowVisibleDisplayFrame(r)
    local visibleHeight = r.height()
    if (rootViewVisibleHeight == 0)
      rootViewVisibleHeight = visibleHeight
      return
    end
    if (rootViewVisibleHeight == visibleHeight)
      return
    end
    if (rootViewVisibleHeight - visibleHeight > 200)
      -- 输入法弹出
      task(400,function()
        -- 加上个动画
        TransitionManager.beginDelayedTransition(Constraint_Layout)
        --修改一下偏移量
        constraintSet.connect(Login_Button.getId(), ConstraintSet.TOP, Password_View.getId(), ConstraintSet.BOTTOM, dp2px(20))
        -- 应用
        constraintSet.applyTo(Constraint_Layout)
      end)
     else
      -- 输入法收起
      task(400,function()
        TransitionManager.beginDelayedTransition(Constraint_Layout)
        -- 将偏移量改回去
        constraintSet.connect(Login_Button.getId(), ConstraintSet.TOP, Password_View.getId(), ConstraintSet.BOTTOM, dp2px(50))
        constraintSet.applyTo(Constraint_Layout)
      end)
    end
    rootViewVisibleHeight = visibleHeight
  end
})

--自动登录
if 自动登录=="关"


 else
  if 学号=="" and 密码=="" and ...==nil

    -- 退出页面()
    --Login(学号,密码)

   elseif ...
    -- 弹出消息("内容")

   elseif 学号 and 密码

    退出页面()
    Login(学号,密码)

   else



  end


end