library(magick)
library(imager)
#read
img=load.image("https://www.prepressure.com/images/design_resolution_original.jpg")
plot(img)
img1=image_read("bird.jpg")
plot(img1)

#resize
img_scale=image_scale(image_scale(img1,"40%"),"x80%")
img_scale

#grayscale
gs=grayscale(img)
plot(gs)

#info
info=image_info(img1)
info

#rgb
img.r<-img
G(img.r)=0
B(img.r)=0
plot(img.r)

img.g<-img
R(img.g)=0
B(img.g)=0
plot(img.g)

img.b<-img
R(img.b)=0
G(img.b)=0
plot(img.b)

#color image using r,g and b seperate planes
img1<-image_quantize(img1,10)
layers=image_split(img1)
iRGB=image_flatten(layers)
plot(iRGB)


#to display 2d image data
data=as.array(img)
data

#channels
plot(img)
channels(img)
channels(img,1:3,drop=TRUE)%>% str

#imsplit
imgnew=as.cimg(function(x,y,z) x+y+z,5,5,5)
imsplit(imgnew,"z") 

#2-D matrix DATA
dat<-as.array(img)
dat
        