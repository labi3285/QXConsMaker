# QXConsMaker
## The easiest way to layout for swift. Enjoy it!

### Basic making methods
Each line should end with MAKE(), which return the layoutConstraint than made and installed:
![](https://github.com/labi3285/QXConsMaker/blob/master/pic_01.png)  
```objc
A.LEFT.EQUAL(SuperV).OFFSET(20).MAKE()
A.RIGHT.EQUAL(SuperV).OFFSET(-20).MAKE()
A.TOP.EQUAL(SuperV).OFFSET(64 + 20).MAKE()
A.BOTTOM.EQUAL(SuperV).OFFSET(-20).MAKE()

B.CENTER_X.EQUAL(A).MAKE()
B.CENTER_Y.EQUAL(A).MAKE()
B.WIDTH.EQUAL(100).MAKE()
B.HEIGHT.EQUAL(B).WIDTH.MAKE()

T1.LEFT.EQUAL(A).OFFSET(10).MAKE()
T1.TOP.EQUAL(A).OFFSET(100).MAKE()

T2.LEFT.EQUAL(T1).RIGHT.OFFSET(10).MAKE()
T2.RIGHT.LESS_THAN_OR_EQUAL(A).OFFSET(-10).MAKE()
T2.CENTER_Y.EQUAL(T1).MAKE()

C.LEFT.EQUAL(A).MAKE()
C.WIDTH.EQUAL(A).RATIO(0.5).MAKE()
C.HEIGHT.EQUAL(100).MAKE()
C.TOP.EQUAL(B).BOTTOM.MAKE()

D.WIDTH.EQUAL(100).MAKE()
D.LEFT.EQUAL(A).RIGHT.RATIO(0.5).MAKE()
D.TOP.EQUAL(C).BOTTOM.MAKE()
```


### A wrap package for common muti-layouts
Each line should end with MAKE(), which return an array of layoutConstrant than made and installed:
![](https://github.com/labi3285/QXConsMaker/blob/master/pic_02.png)  
```objc
Back.IN(SuperV).TOP(10).LEFT(10).BOTTOM(10).RIGHT(10).MAKE()
        
Container.IN(Back).SIZE(200, 200).CENTER.MAKE(scale)
        
A.IN(Container).LEFT.TOP.SIZE(30, 30).MAKE(scale)
B.IN(Container).LEFT.CENTER.SIZE(30, 30).MAKE(scale)
C.IN(Container).LEFT.BOTTOM.SIZE(30, 30).MAKE(scale)
        
D.IN(Container).RIGHT.TOP.SIZE(30, 30).MAKE(scale)
E.IN(Container).RIGHT.CENTER.SIZE(30, 30).MAKE(scale)
F.IN(Container).RIGHT.BOTTOM.SIZE(30, 30).MAKE(scale)
        
G.IN(Container).TOP.CENTER.SIZE(30, 30).MAKE(scale)
H.IN(Container).BOTTOM.CENTER.CENTER.SIZE(30, 30).MAKE(scale)
        
I.IN(Container).CENTER.SIZE(30, 30).MAKE(scale)

J.LEFT(Container).TOP.SIZE(30, 30).MAKE(scale)
K.LEFT(Container).CENTER.SIZE(30, 30).MAKE(scale)
L.LEFT(Container).BOTTOM.SIZE(30, 30).MAKE(scale)

M.RIGHT(Container).TOP.SIZE(30, 30).MAKE(scale)
N.RIGHT(Container).CENTER.SIZE(30, 30).MAKE(scale)
O.RIGHT(Container).BOTTOM.SIZE(30, 30).MAKE(scale)
        
P.TOP(Container).OFFSET(10).LEFT(10).SIZE(30, 30).MAKE(scale)
Q.TOP(Container).CENTER.OFFSET(10).SIZE(30, 30).MAKE(scale)
R.TOP(Container).OFFSET(10).RIGHT(10).SIZE(30, 30).MAKE(scale)
     S.BOTTOM(Container).OFFSET(10).LEFT(10).WIDTH(30).HEIGHT(30).MAKE(scale)
T.BOTTOM(Container).OFFSET(10).CENTER.SIZE(30, 30).MAKE(scale)
        U.BOTTOM(Container).OFFSET(10).RIGHT(10).WIDTH(30).HEIGHT(30).MAKE(scale)
```


### Other funcs
1. You can get each constraint and change its constant:
```objc
        sharp.CENTER_X.EQUAL(SuperV).MAKE()
        sharp.TOP.EQUAL(SuperV).OFFSET(100).MAKE()
        sharp.HEIGHT.EQUAL(100).MAKE()
        widthCons = sharp.WIDTH.EQUAL(10).MAKE()
        
        widthCons?.constant = CGFloat(100)
```

2.You can remake constrains by removing all constrains than already installed to the view:
```objc
        A!.REMOVE_CONSES()
        A!.CENTER_X.EQUAL(view).MAKE()
        A!.CENTER_Y.EQUAL(view).MAKE()
        A!.MAKE(W: 100, H: 100)

        // remake
        A!.REMOVE_CONSES()
        A!.CENTER_X.EQUAL(view).MAKE()
        A!.CENTER_Y.EQUAL(view).MAKE()
        A!.MAKE(W: 200, H: 200)
```

Best reguars for commit bugs!
Have fun!
