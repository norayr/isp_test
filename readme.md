
Looks like Texts module does not always return R.eot on 64bit systems.
That happens because 

```
IF u IS Piece
```

in the procedure Read may return TRUE on 64bit systems, while in the same situation it returns FALSE on 32bit systems.

64bit system:
![](https://raw.githubusercontent.com/norayr/isp_test/master/screenshot_x86_64_texts.read.png)

32bit system:
![](https://raw.githubusercontent.com/norayr/isp_test/master/screenshot_x86_texts.read.png)

Most likely this happens because the macro

```
#define __ISP(p, typ, level)  __IS(__TYPEOF(p),typ,level)
```

in SYSTEM.h does not work correct on 64bit systems.

