
import UIKit

public protocol CGFloatable {
    var f : CGFloat { get }
}

public extension CGFloat {
	
	public var size : CGSize {
		return CGSize(width: self, height: self)
	}
	
	public var origin : CGPoint {
		return CGPoint(x: self, y: self)
	}
	
	/// 很多时候需要设置 ×2 的属性
	public var double : CGFloat {
		return self * 2
	}
}

extension CGFloat : Halo.CGFloatable {
    public var f : CGFloat {
        return self
    }
}

public func *(lhs: Halo.CGFloatable, rhs: Halo.CGFloatable) -> CGFloat {
    return lhs.f * rhs.f
}

public func ValueWithScreenWidth(_320 : Halo.CGFloatable, _375 : Halo.CGFloatable, _414 : Halo.CGFloatable) -> CGFloat {
    switch ScreenWidth {
    case 414.f:
        return _414.f
    case 320.f:
        return _320.f
    default:
        return _375.f
    }
}

public func ValueWithScreenHeight(_480 : Halo.CGFloatable, _568: Halo.CGFloatable, _667: Halo.CGFloatable, _736: Halo.CGFloatable) -> CGFloat {
	switch ScreenHeight {
	case 480.f:
		return _480.f
	case 568.f:
		return _568.f
	case 736.f:
		return _736.f
	default:
		return _667.f
	}
	
}