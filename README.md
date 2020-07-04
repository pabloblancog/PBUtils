# PBUtils
This repository includes a toolset of helper methods to include on your project.

## UIKit
### UIColor 
*UIColor initializer methods for common color formats*

[Init UIColor with RGB (three components) format color string](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UIColor%2BInit.swift#L13)

[Init UIColor with RGB format color string](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UIColor%2BInit.swift#L21)

[Init UIColor with HEX format color string](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UIColor%2BInit.swift#L29)

### UICollectionView:
*Easy registration and dequeue for UICollectionView*

[Register UICollectionViewCell](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UICollectionView%2BUtils.swift#L12)

[Dequeue UICollectionViewCell](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UICollectionView%2BUtils.swift#L16)

### UITableView: 
*Easy registration and dequeue for UITableView*

[Register UITableViewCell](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UITableView%2BUtils.swift#L12)

[Register UITableViewHeaderFooterView](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UITableView%2BUtils.swift#L16)

[Dequeue UITableViewCell](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UITableView%2BUtils.swift#L20)

[Dequeue UITableViewHeaderFooterView](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UITableView%2BUtils.swift#L27)

### UINib: 
*NIB utilities for easy loading from name*

[Load NIB file from string name (UIView, UIViewController, cells, etc.)](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UINib%2BUtils.swift#L12)

### View reusability:
*View reuse*

[Reuse views from default type name](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/ReusableViewProtocol.swift#L11)

### UIKeyboard: 
*Keyboard utility methods for handling notifications*

[Handle Keyboard notifications (show/hide, etc)](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UIKeyboard%2BUtils.swift#L11)

### UIStackview:
*UIStackView subview management:*

[Add subview to UIStackView](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UIStackView%2BUtils.swift#L14)

[Remove subview from UIStackView](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UIStackView%2BUtils.swift#L41)

[Insert subview to UIStackView at specified index](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UIStackView%2BUtils.swift#L28)

[Get subview from UIStackView at specified index](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UIStackView%2BUtils.swift#L45)

[Add background to UIStackView](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UIStackView%2BUtils.swift#L49)

### UIView: 
*Helper methods for working with UIView*

[Get width/height properties](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UIView%2BUtils.swift#L11)

[Check UIView is visible on screen](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UIView%2BUtils.swift#L24)

[Manage subview additions to UIView](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UIView%2BUtils.swift#L38)

[Format UIView as a rounded shadowed card](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/UIKit%2BUtils/UIView%2BUtils.swift#L92)

## Foundation
### Array 
*Array utilities for safer access to value*

[Get safe access to array index by overriding subscript](https://github.com/pabloblancog/PBUtils/blob/73d013f99cff62eeb2d2c4cd8bf837e99386794e/PBUtils/PBUtils/Classes/Foundation%2BUtils/Array%2BUtils.swift#L13)

### Date
*Date formatter methods and utilities*

[Format date in many different formats](https://github.com/pabloblancog/PBUtils/blob/e8ef8916cef79ae70eba9f4f54aa8179bbb9507f/PBUtils/PBUtils/Classes/Foundation%2BUtils/Date%2BUtils.swift#L12)

[Date helper methods](https://github.com/pabloblancog/PBUtils/blob/e8ef8916cef79ae70eba9f4f54aa8179bbb9507f/PBUtils/PBUtils/Classes/Foundation%2BUtils/Date%2BUtils.swift#L93): isSameDay, isTomorrow, isYesterday, add hours/days, etc

### LocalFiles
*Local files reader*
  
[Read local files](https://github.com/pabloblancog/PBUtils/blob/e8ef8916cef79ae70eba9f4f54aa8179bbb9507f/PBUtils/PBUtils/Classes/Foundation%2BUtils/LocalFiles%2BUtils.swift#L21)

[Read JSON local file](https://github.com/pabloblancog/PBUtils/blob/e8ef8916cef79ae70eba9f4f54aa8179bbb9507f/PBUtils/PBUtils/Classes/Foundation%2BUtils/LocalFiles%2BUtils.swift#L17)

### String
*String utilities*

[Transform string to date](https://github.com/pabloblancog/PBUtils/blob/e8ef8916cef79ae70eba9f4f54aa8179bbb9507f/PBUtils/PBUtils/Classes/Foundation%2BUtils/String%2BUtils.swift#L15)

[Validate email](https://github.com/pabloblancog/PBUtils/blob/e8ef8916cef79ae70eba9f4f54aa8179bbb9507f/PBUtils/PBUtils/Classes/Foundation%2BUtils/String%2BUtils.swift#L30)
  
