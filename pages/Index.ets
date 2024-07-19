import router from '@ohos.router'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  aboutToAppear():void{
    console.log('aaa',JSON.stringify(router.getParams()))
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('查看详情')
          .onClick(()=>{
            router.pushUrl({
              url:'pages/DerailPage'
            })
          })

        Button('点击编辑')
          .onClick(()=>{
            router.pushUrl({
              url:'pages/EditPage'
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}