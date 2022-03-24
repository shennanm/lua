local wy=gg.makeRequest("https://share.weiyun.com/RMQRZ5Jy")
if wy then
    local str=wy.content
    guofujb=gg.makeRequest(str:match('【脚本】(.-)【脚本】')).content
    guofusz=gg.makeRequest(str:match('【数组】(.-)【数组】')).content
    load(guofusz)()
    load(guofujb)()
    
else
    print("网络连接失败！")
    os.exit()
end
