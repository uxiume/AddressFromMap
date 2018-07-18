# AddressFromMap
通过地图获取地址信息，可搜索，简单的一个ViewController


## 使用方法
```
AddressFromMapViewController *vc = [[AddressFromMapViewController alloc] init];
    vc.selectedEvent = ^(CLLocationCoordinate2D coordinate, NSString *addressName, NSString *province, NSString *city, NSString *distract, NSString *address) {
        //DLog(@"输出🍀 %@%@%@%@",province,city,distract,address);
        //DLog(@"输出🍀 %@",address);
        self.addressName.text = addressName;
        self.aera.text = [NSString stringWithFormat:@"%@ | %@ | %@",province,city,distract];
        self.address.text = address;
        self.coordinate.text = [NSString stringWithFormat:@"%f\n%f",coordinate.latitude,coordinate.longitude];
    };
    [self.navigationController pushViewController:vc animated:YES];
 ```

## 示例

![](https://github.com/UXIUME/AddressFromMap/blob/master/Untitled3.gif)
