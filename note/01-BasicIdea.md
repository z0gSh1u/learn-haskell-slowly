## Haskell 的 Basic Idea

### 定义数据类型

```
data <类型名> = <构造函数名> <构造函数参数列表>
```

类型允许演算（如下面使用的或演算）。

```haskell
data Position = Cartesian Double Double | Polar Double Double -- 笛卡尔坐标或极坐标
```

### 声明一个量

```haskell
pointA :: Position -- 声明 pointA 和它的类型
pointA = Cartesian 3 4 -- 构造 pointA
```

### 定义函数

```
<函数名> :: <函数的类型>
```

函数的类型要科里化表达，最后一个箭头指向最终返回类型。

```haskell
distance :: Position -> Position -> Double
```

### 实现函数

```
<函数名> <参数捕获> [参数捕获...] = 
	<函数实现>
```

例如要实现上面定义的 distance 函数，完备的实现应覆盖 Position 的各种构造情况。下面是一种：

```haskell
distance (Polar a r) (Cartesian x2 y2) = -- 捕获两个参数，分别解构
  let x1 = r * cos a -- let 声明临时量，只在后面的 in 表达式可见
      y1 = r * sin a -- 调用函数时用空格分隔参数
  in sqrt ((x1 - x2) ^ 2 + (y1 - y2) ^ 2) -- let..in..语法
```

