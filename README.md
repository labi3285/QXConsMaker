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
        A.WIDTH.EQUAL(30).MAKE()
        A.HEIGHT.EQUAL(30).MAKE()
        MAKE_EQUAL_SIZE(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R)
        
        A.IN(Container).LEFT.TOP.MAKE()
        B.IN(Container).LEFT.CENTER.MAKE()
        C.IN(Container).LEFT.BOTTOM.MAKE()
        
        D.IN(Container).RIGHT.TOP.MAKE()
        E.IN(Container).RIGHT.CENTER.MAKE()
        F.IN(Container).RIGHT.BOTTOM.MAKE()
        
        G.IN(Container).TOP.CENTER.MAKE()
        H.IN(Container).BOTTOM.CENTER.CENTER.MAKE()
        
        I.IN(Container).CENTER.MAKE()
        
        J.LEFT(Container).TOP.MAKE()
        K.LEFT(Container).CENTER.MAKE()
        L.LEFT(Container).BOTTOM.MAKE()

        M.RIGHT(Container).TOP.MAKE()
        N.RIGHT(Container).CENTER.MAKE()
        O.RIGHT(Container).BOTTOM.MAKE()
        
        P.TOP(Container).OFFSET(10).LEFT(10).MAKE()
        Q.TOP(Container).CENTER.OFFSET(10).MAKE()
        R.TOP(Container).OFFSET(10).RIGHT(10).MAKE()

        S.BOTTOM(Container).OFFSET(10).LEFT(10).WIDTH(30).HEIGHT(30).MAKE()
        T.BOTTOM(Container).OFFSET(10).CENTER.SIZE(30, 30).MAKE()
        U.BOTTOM(Container).OFFSET(10).RIGHT(10).WIDTH(30).HEIGHT(30).MAKE()
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
