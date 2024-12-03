//if 语句
@Entry
@Component
struct Index {
  build() {
    let score: number = 85;
    if (score >= 80) {
      console.log('奖励', '一辆自行车');
    }
  }
}
//双分支 if 语句
@Entry
@Component
struct Index {
  build() {
    let score: number = 55;
    if (score >= 90) {
      console.log('评价:', '卓越');
    } else if (score >= 70) {
      console.log('评价:', '优秀');
    } else if (score >= 50) {
      console.log('评价:', '中等');
    } else {
      console.log('评价:', '待提高');
    }
  }
}


///////////////////////////////////////////////////////////////
//switch 语句
@Entry
@Component
struct Index {
  build() {
    let fruit: string = '芒果';
    switch (fruit) {
      case '葡萄':
        console.log('葡萄价格:', '10元一斤');
        break;
      case '橙子':
        console.log('橙子价格:', '8元一斤');
        break;
      case '梨':
        console.log('梨价格:', '5元一斤');
        break;
      default:
        console.log('提示:', '尊敬的用户，该水果不存在');
    }
  }
}


////////////////////////////////////////////
//三元条件表达式
@Entry
@Component
struct Index {
  build() {
    let num1: number = 50;
    let num2: number = 20;
    let res: number = num1 > num2 ? 10 * 2 : 5 + 3;
    console.log('三元条件表达式', res);
  }
}

///////////////////////////////////////////////////////////
//条件渲染
@Entry
@Component
struct Index {
  @State age: number = 25;
  build() {
    Column() {
      if (this.age < 18) {
        Text('未成年，未满18岁');
      } else if (this.age < 40) {
        Text('青年人，18-40岁');
      } else {
        Text('中年人，40岁以上');
      }
      Button('增加年龄').onClick(() => {
        this.age += 1;
      });
      Text(`当前年龄: ${this.age}`);
    }
  }
}
