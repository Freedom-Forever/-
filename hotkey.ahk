;�������
sleep 20000
send, #d
!l::Send,#1 
!i::Send,#2
!p::Send,#3
!x::Send,#4
!g::Send,#5
!o::Send,#6
!e::Send,#7
!d::Send,#8
;jenkins
!j::
    Run , "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://i.vip9999.com:8080/jenkins/user/zonglin2.li/my-views/view/�ҵ���ͼ/"
    sleep 800
    click
    return
;test
!t::
    Run http://test.crm.jindashi.cn/test.php/admin/index/index.html
    sleep 800
    click
    return

;wiki
!w::
    Run http://wiki.jindashi.cn/pages/viewpage.action?pageId=18392021
    sleep 800
    click
    return

;������
!c::Send {Click}

;����Ҽ�
!v::Click right


#space::  ; Win+�ո��
Run http://wiki.jindashi.cn/pages/viewpage.action?pageId=18392021
;sleep 1000
Send {Click}
return
