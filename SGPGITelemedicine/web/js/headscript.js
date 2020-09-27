var imgArr=["images/banner.png","images/p1.jpg","images/p2.jpg","images/p3.jpg"];
var index=0;
function slider()
{
var image=document.getElementById("sdr");
image.src=imgArr[index];
index++;
if(index==imgArr.length)
{
index=0;
}
window.setTimeout("slider()",3000);
}