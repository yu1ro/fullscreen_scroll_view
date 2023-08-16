# FullScreenScrollView
Have you ever wanted to put Expanded in a SingleChildScrollView?  
I have.    
For example, you may want to always place a button at the bottom of the screen,  
If you want the entire screen to scroll when there is not enough margin, you can use this package.  

<p>
<img src="https://raw.githubusercontent.com/yu1ro/fullscreen_scroll_view/master/repo_files/assets/demo.gif" width="320" />
</p>

## Usage

The working code is in /example.  
Simply, the code is below.

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
