Function 探寻_动态_ocr版本(x,y)  //返回 1 是 点进去的 ， 2:没有点进去的    3:没有老鼠
    Dim 是否已经采集
    是否已经采集 = false
    Dim 计次时间 
    计次时间=0
    Do  
        If 找图_返回真假(581,1044,656,1083,"Attachment:探寻.bmp",0) = true  and 找图_返回真假(616,1115,680,1147,"Attachment:刷新.bmp",0) = true Then
            Exit Do  
        End If
         
        If 找图_返回真假(581,1044,656,1083,"Attachment:探寻.bmp",0) = true and 找图_返回真假(161,102,614,156,"Attachment:的福地.bmp",0) = true Then
            Tap 620,1029   // 点击探寻
            Delay 1000
 
        End If
        计次时间 = 计次时间 + 1
        If 计次时间 >= 25 Then
            Call 回到首页()
            Exit Function
        End If
        Call 关闭()
         Delay 1000
    Loop
    
   
     
    FindColor x  - 487,y ,x - 487 + 10,y  + 10,"5251D6-202020",0,0.9,intX,intY
    If intX = -1 And intY = -1 Then  //没有红色,说明 没有采集
        Dim X1,Y1,X2,Y2,是否找到,是否符合,是否立即跳出,是否没有老鼠
        计次 =0
        For i = 179 To 570 Step 77.3
         
            计次 = 计次 + 1       
            X1 = i
            Y1 = y+46
            X2 = i + 76
            Y2 = y + 72 + 45
          
            //*** TracePrint "坐标:",x1,y1,x2,y2
             
            FindMultiColor x1,y1,x2,y2,"A5824A-020202","19|-10|A57531-020202,44|-10|9C7539-020202,19|-19|FFEFBD-020202,22|5|BD9231-020202,47|-12|9C7539-020202,20|-11|A57129-020202,32|-2|E7C78C-020202,32|8|BD8231-020202",0,0.9,intX,intY
            If intX  = -1 And intY = -1 Then
                //*** TracePrint "不是  灵石,才进一步检测"
                For i = 0 To UBOUND(物品Arr)   //都是  小 的
                    是否找到=false
                    是否符合 = false
                    是否立即跳出=false
                    //*** TracePrint 物品Arr(i),i
                    If 物品Arr(i) = "仙桃" Then
                        For Each k ,v in 仙桃_小_table
                            //*** TracePrint "键:" & k & ", 值:" & v
                            Arr = Split(v,"$")
                            FindMultiColor x1,y1,x2,y2,Arr(0),Arr(1),0,0.88,intX,intY
                            If intX > -1 Then
                                //*** TracePrint "【找到】仙桃:",intX,intY
                                是否找到 = true
                                是否立即跳出=true
                                Exit For
                            Else
                                //*** TracePrint "没有找到 仙桃"
                            End If
                        Next
                         
                    ElseIf 物品Arr(i) = "天衍令" Then
                        For Each k ,v in 天衍令_小_table
                            //*** TracePrint "键:" & k & ", 值:" & v
                            Arr = Split(v,"$")
                            FindMultiColor x1,y1,x2,y2,Arr(0),Arr(1),0,0.88,intX,intY
                            If intX > -1 Then
                                //*** TracePrint "【找到】天衍令:",intX,intY
                                是否找到 = true
                                是否立即跳出=true
                                Exit For
                            Else
                                //*** TracePrint "没有找到 天衍令"
                            End If
                        Next
                     
                    ElseIf 物品Arr(i) = "净瓶水" Then
                        For Each k ,v in 净瓶水_小_table
                            //*** TracePrint "键:" & k & ", 值:" & v
                            Arr = Split(v,"$")
                            FindMultiColor x1,y1,x2,y2,Arr(0),Arr(1),0,0.88,intX,intY
                            If intX > -1 Then
                                //*** TracePrint "【找到】净瓶水:",intX,intY
                                是否找到 = true
                                是否立即跳出=true
                                Exit For
                            Else
                                //*** TracePrint "没有找到 净瓶水"
                            End If
                        Next
                    ElseIf 物品Arr(i) = "仙玉" Then
 
                        For Each k ,v in 仙玉_小_table
                            //*** TracePrint "键:" & k & ", 值:" & v
                            Arr = Split(v,"$")
                            FindMultiColor x1,y1,x2,y2,Arr(0),Arr(1),0,0.88,intX,intY
                            If intX > -1 Then
                                //*** TracePrint "【找到】仙玉:",intX,intY
                                是否找到 = true
                                是否立即跳出=true
                                Exit For
                            Else
                                //*** TracePrint "没有找到 仙玉"
                            End If
                        Next
         
                    ElseIf 物品Arr(i) = "昆仑铁" Then
                        For Each k ,v in 昆仑铁_小_table
                            //*** TracePrint "键:" & k & ", 值:" & v
                            Arr = Split(v,"$")
                            FindMultiColor x1,y1,x2,y2,Arr(0),Arr(1),0,0.88,intX,intY
                            If intX > -1 Then
                                //*** TracePrint "【找到】昆仑铁:",intX,intY
                                是否找到 = true
                                是否立即跳出=true
                                Exit For
                            Else
                                //*** TracePrint "没有找到 昆仑铁"
                            End If
                        Next
                    ElseIf 物品Arr(i) = "琉璃珠" Then
                        For Each k ,v in 琉璃珠_小_table
                            //*** TracePrint "键:" & k & ", 值:" & v
                            Arr = Split(v,"$")
                            FindMultiColor x1,y1,x2,y2,Arr(0),Arr(1),0,0.88,intX,intY
                            If intX > -1 Then
                                //*** TracePrint "【找到】琉璃珠:",intX,intY
                                是否找到 = true
                                是否立即跳出=true
                                Exit For
                            Else
                                //*** TracePrint "没有找到 琉璃珠"
                            End If
                        Next
                    End If
 
                    If 是否找到 = true Then
                         
                        //*** TracePrint x1,y1,x2,y2
              
                        //    str =  FH.Jumpfire_ScreenOCR_Str(Cint(x1),Cint(y1),Cint(x2),Cint(y2),false,30,15)
                        //*** TracePrint "级别: ",str
                         
                        RegStrArr = ShanHai.RegexFind(str,"%d")
                        str=RegStrArr(0)
 
                        If str <> "" Then
                            If 物品Arr(i) = "仙桃" Then
                                //查询 等级
                                If CInt(str) >= 仙桃的等级 Then
                                    是否符合=true
                                End If
                            ElseIf 物品Arr(i) = "天衍令" Then
                                If CInt(str) >= 天衍令的等级 Then
                                    是否符合=true
                                End If
                            ElseIf 物品Arr(i) = "净瓶水" Then
                                If CInt(str) >= 净瓶水的等级 Then
                                    是否符合=true
                                End If
                            ElseIf 物品Arr(i) = "仙玉" Then
                                If CInt(str) >= 仙玉的等级 Then
                                    是否符合=true
                                End If
                            ElseIf 物品Arr(i) = "昆仑铁" Then
                                If CInt(str) >= 昆仑铁的等级 Then
                                    是否符合=true
                                End If
                            ElseIf 物品Arr(i) = "琉璃珠" Then
                                If CInt(str) >= 琉璃珠的等级 Then
                                    是否符合=true
                                End If
                            End If
                        End If
                    End If
         
                    If 是否符合 = true Then
                        Tap x,y   //点击 前往
                        Delay 1000
                        // 找 资源详情 ,看看是采集还是找回
                        是否已经采集 = true
                        计次时间=0
                        Do 
                            If  找图_返回真假(192,102,532,157,"Attachment:的福地.bmp",0) = true Then
                                If 找图_返回真假(293,1046,318,1079,"Attachment:0_福地进去的老鼠.bmp",0) = true Then
                                     
                                    是否没有老鼠 =true
                                    //*** TracePrint "没有 老鼠"
                                    探寻_动态_ocr版本 = 3
                                     
                                    Exit function
                                End If
                                Exit Do 
                            End If
                            计次时间 = 计次时间 + 1
                            If 计次时间 >= 25 Then
                                Call 回到首页()
                                Exit Function
                            End If
                            Call 关闭()
                        Loop
              
                        If 采集_ocr版本(计次) = true Then
                                     
                            是否没有老鼠 =true
                            //*** TracePrint "没有 老鼠"
                            探寻_动态_ocr版本 = 3
                            Exit function
                        End If
                 
                        //返回 探寻
                        计次时间=0
                        Do    
                            If  找图_返回真假(192,102,532,157,"Attachment:的福地.bmp",0) = true Then
                                Tap 621,1162
                                Delay 1000
                                If 找图_返回真假(293,1046,318,1079,"Attachment:0_福地进去的老鼠.bmp",0) = true Then
                                     
                                    是否没有老鼠 =true
                                    //*** TracePrint "没有 老鼠"
                                    探寻_动态_ocr版本 = 3
                                    Exit function
                                End If
                            End If
 
 
                            If  找图_返回真假(609,1113,684,1148,"Attachment:刷新.bmp",0) = true Then
                                探寻_动态_ocr版本=1
                                Exit function
                            End If
                            计次时间 = 计次时间 + 1
                            If 计次时间 >= 25 Then
                                Call 回到首页()
                                Exit Function
                            End If
                            Call 关闭()
                        Loop
 
                    End If
         
                    If 是否立即跳出 = true Then
                        Exit For
                    End If
                  
                Next
            End If
            If 是否已经采集 = true Then
                Exit For
            End If
  
            
        Next
 
 
    End If
 
    //返回 别人的探寻福地
    //探寻别人 的 福地
    计次时间=0
    Do  
        If 找图_返回真假(581,1044,656,1083,"Attachment:探寻.bmp",0) = true and 找图_返回真假(557,1162,682,1207,"Attachment:自动采集.bmp",0) = true Then
            Tap 620,1029   // 点击探寻
            Delay 1000
 
        End If
         
        If 找图_返回真假(581,1044,656,1083,"Attachment:探寻.bmp",0) = true and 找图_返回真假(161,102,614,156,"Attachment:的福地.bmp",0) = true Then
            Tap 620,1029   // 点击探寻
            Delay 1000
 
        End If
         
        If 找图_返回真假(298,119,416,169,"Attachment:探寻_大.bmp",0) = true and 找图_返回真假(609,1113,684,1148,"Attachment:刷新.bmp",0) = true Then
            Exit Do
        End If
        Call 关闭()
        计次时间 = 计次时间 + 1
        If 计次时间 >= 25 Then
            Call 回到首页()
            Exit Function
        End If
    Loop   
 
 
 
    If 是否已经采集 = true Then
        探寻_动态_ocr版本 = 1
    Else
        探寻_动态_ocr版本 = 2
    End If
     
End Function