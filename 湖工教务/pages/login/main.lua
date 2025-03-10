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

-- @param title 点击的菜单标题
-- @description 顶栏菜单项目点击回调事件

--监听全部浏览器的事件
--由于fa2手册自带的浏览器状态监听智能监听第一个浏览页
--Adam·Eva重新写了个监听所有浏览页的
function 存储应用数据(key,value)
  activity.setSharedData(key,value)
  return true
end

function 获取应用数据(key)
  local data = activity.getSharedData(key)
  return data
end

User = 获取应用数据("学号")

Password=获取应用数据("密码")

--自动登录


function onResume()

  删除=获取应用数据("删除")

  if 删除

    if 删除=="开"

      退出页面()
     else



    end


  end


  -- print("返回程序")
end


function 提示消息(内容)
  import "com.google.android.material.snackbar.Snackbar"
  local anchor=activity.findViewById(android.R.id.content)
  Snackbar.make(anchor, 内容, Snackbar.LENGTH_LONG).show()
end

--悬浮按钮点击事件
function onFloatingActionButtonClick(v)
  进入子页面("main",{"edit"})

end

link=[...]

url=link[1]

jsCode=link[2]
if url then
  加载网页(url)

  --print(jsCode)

  import "net.fusion64j.core.ui.fragment.WebInterface"
  import "androidx.viewpager.widget.ViewPager$OnPageChangeListener"
  local uiManager=this.uiManager
  local viewPager=uiManager.viewPager
  local pagerAdapter=uiManager.pagerAdapter
  local pagerCount=pagerAdapter.getCount()



  function webInterface()
    for i = 0,pagerCount-1,1 do
      local fragment=uiManager.getFragment(i)
      if fragment then

        local webView = fragment.getWebView()
        local View = luajava.bindClass "android.view.View"
        webView.setOnKeyListener(View.OnKeyListener{
          onKey=function(v, keyCode, event)
            local KeyEvent = luajava.bindClass "android.view.KeyEvent"
            --判断按键事件为“按下”
            if event.getAction() == KeyEvent.ACTION_DOWN then
              --判断按的是返回键并且能回退网页
              if keyCode == KeyEvent.KEYCODE_BACK && webView.canGoBack() then
                --这里放你的操作
                --webView.goBack()
                --退出页面()


                --直接返回true表明已经执行过返回键的操作
                return true
              end
            end
            --其它按键依旧按默认处理

            --退出页面()

            --中文对话框编写者：难忘的旋律

            --中文对话框编写者：难忘的旋律
            --网页后退()

            return false
          end
        })

        fragment.setWebInterface(WebInterface{onPageFinished=function(view,url)
            --页面加载结束事件

            local uiManager=activity.getUiManager()
            webView=uiManager.getCurrentFragment().getWebView()
            activity.uiManager.currentFragment.webView.evaluateJavascript(jsCode,nil)
            activity.uiManager.currentFragment.webView.evaluateJavascript([[

//19:21-38


//11:47-27


document.getElementsByClassName("bottom-nav van-hairline--top-bottom van-tabbar van-tabbar--fixed")[0].setAttribute("style","display:none");
]],nil)

          end,
          onPageStarted=function(view,url,favicon)
            --页面开始加载事件
            if url:find"Home"

              弹出消息("成功")

             else
              --提示消息("自动登录中")
              --print("登录中")

              --进入子页面("my",{url})


            end

          end,
          onReceivedTitle=function(view,title)

            --local uiManager=this.uiManager
            -- local toolbar=uiManager.toolbar
            --设置toolbar标题
            -- toolbar.titleText=title

            --获取到网页标题时加载的事件
          end,
          onLoadResource=function(view,url)
            --页面资源加载监听
            --可通过该方法获取网页上的资源
          end,
          onUrlLoad=function(view,url)
            --即将开始加载事件，url参数是即将加载的url
            --该函数返回一个布尔值
            --url:find"login"

            --返回true则拦截本次加载
            return true
          end,


          onReceivedSslError=function(view, sslErrorHandler, sslError)
            --ssl证书错误处理事件
            --需自行处理，请返回true拦截原事件
            return false
          end
        })
      end
    end
  end
  --local View = luajava.bindClass "android.view.View"



  webInterface()
  viewPager.setOnPageChangeListener(OnPageChangeListener{
    onPageSelected=function(n)
      webInterface()
    end
  })
  viewPager.setOnKeyListener(View.OnKeyListener{
    onKey=function(v, keyCode, event)
      local KeyEvent = luajava.bindClass "android.view.KeyEvent"
      --判断按键事件为“按下”
      if event.getAction() == KeyEvent.ACTION_DOWN then
        --判断按的是返回键并且能回退网页
        if keyCode == KeyEvent.KEYCODE_BACK && webView.canGoBack() then
          --这里放你的操作
          --webView.goBack()
          --直接返回true表明已经执行过返回键的操作
          return true
        end
      end
      --其它按键依旧按默认处理
      return true
    end
  })



end

