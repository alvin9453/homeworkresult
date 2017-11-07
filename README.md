NCNU 計算機概論 批改作業小程式
=================================

使用方式
-----------

1. 新增一個資料夾，名為``Homework``
2. 到Moodle點選"下載所有繳交作業"，假設本次作業名稱為exer1，將exer1解壓縮到``Homework``的exer1資料夾中。
3. 執行``./homework.sh exer1``即可將作業結果輸出到畫面上! 若想把結果輸入到文件資中，可以使用``./homework.sh exer1 > result.txt``
4. 若作業有規定Input，例如需要輸入1、2、3三個數字，則可以這樣使用: ``./homework.sh exer1 1\n2\n3``

注意事項
---------

1. 記得將``homework.sh``、``member``(修課名單)、``Homework``放在同一層目錄
2. 有些人的Input輸入方式會比較奇怪(大一不懂是)，例如只需要輸入一次他卻寫個while迴圈，這時程式的結果會顯示他錯誤，針對這樣少數的個例記得在單獨執行程式查看，這個程式只是幫你節省大部分的時間!