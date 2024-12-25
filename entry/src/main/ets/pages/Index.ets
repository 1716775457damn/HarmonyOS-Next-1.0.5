@Entry
@Component
struct Index {
  @State currentExample: number = 0
  @State score: number = 85
  @State age: number = 25
  @State fruit: string = '芒果'
  
  @Builder ExampleIf() {
    Column() {
      Text('If语句示例')
      if (this.score >= 80) {
        Text('奖励: 一辆自行车')
      }
      Button('修改分数').onClick(() => {
        this.score = this.score >= 80 ? 75 : 85
      })
      Text(`当前分数: ${this.score}`)
    }
    .padding(16)
  }

  // 获取水果价格信息
  getFruitPrice(fruit: string): string {
    switch (fruit) {
      case '葡萄': return '葡萄价格: 10元一斤'
      case '橙子': return '橙子价格: 8元一斤'
      case '梨': return '梨价格: 5元一斤'
      default: return '提示: 该水果暂无价格信息'
    }
  }

  @Builder ExampleSwitch() {
    Column() {
      Text('Switch语句示例')
      Text(`选择的水果: ${this.fruit}`)
      Row() {
        ForEach(['葡萄', '橙子', '梨', '芒果'], (item: string) => {
          Button(item)
            .margin(4)
            .onClick(() => {
              this.fruit = item
            })
        })
      }
      
      // 显示价格信息
      Text(this.getFruitPrice(this.fruit))
    }
    .padding(16)
  }

  @Builder ExampleAge() {
    Column() {
      Text('条件渲染示例')
      if (this.age < 18) {
        Text('未成年，未满18岁')
      } else if (this.age < 40) {
        Text('青年人，18-40岁')
      } else {
        Text('中年人，40岁以上')
      }
      Button('增加年龄').onClick(() => {
        this.age += 1
      })
      Text(`当前年龄: ${this.age}`)
    }
    .padding(16)
  }

  build() {
    Column() {
      Tabs() {
        TabContent() {
          this.ExampleIf()
        }.tabBar('If示例')
        
        TabContent() {
          this.ExampleSwitch()
        }.tabBar('Switch示例')
        
        TabContent() {
          this.ExampleAge()
        }.tabBar('条件渲染')
      }
    }
  }
}
