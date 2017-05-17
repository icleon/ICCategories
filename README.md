# ICCategories

##NSMutableDictionary

* ICAttributeMaker
	* 链式语法
	* 快速生成NSAttributedString的attributes

	
	```
    NSMutableDictionary *attribues = [NSMutableDictionary new]
    .ic_font([UIFont systemFontOfSize:20.0])
    .ic_foregroundColor([UIColor redColor])
    .ic_backgroundColor([UIColor whiteColor]);

    [attribues class];
```

