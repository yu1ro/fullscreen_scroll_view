# FullScreenScrollView
SingleChildScrollViewにExpandedを入れたくなったことはありませんか？
私はあります。  
例えば、常に一番下にボタンを配置し、上の部分が多くなったり、画面が小さくなったら余白部分が小さくなり、  
余白が足りなくなったらスクロールしてほしい。  
そんな場合に使えます。  

<p>
<img src="/assets/demo.gif?raw=true&v1" width="320" />
</p>

## 利用方法

動作するコードは/exampleにございます。  
簡単にはこんなコードで使います。

```dart
FullScreenScrollView(
  child: Column(
    children: <Widget>[
      const Text('some widget'),
      const Expanded(child: SizedBox.shrink()),
      ElevatedButton(
        onPressed: _incrementCounter,
        child: const Row(
          children: [Icon(Icons.add), Text('Add widget')],
        ),
      ),
    ],
  ),
)
```
