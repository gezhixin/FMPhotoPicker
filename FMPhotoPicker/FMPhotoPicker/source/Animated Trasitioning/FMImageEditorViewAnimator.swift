//
//  FMImageEditorViewAnimator.swift
//  FMPhotoPicker
//
//  Created by zhixin ge on 2019/4/6.
//

import UIKit

class FMImageEditorViewAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    var isPush: Bool = true
    
    init(isPush: Bool) {
        self.isPush = isPush
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.35
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        guard let fromView = transitionContext.view(forKey: UITransitionContextViewKey.from) else {
            return
        }
        guard let toView = transitionContext.view(forKey: UITransitionContextViewKey.to) else {
            return
        }
        
        let contentView = transitionContext.containerView
        
        if isPush {
            contentView.addSubview(toView)
            contentView .addSubview(fromView)
        } else {
            contentView .addSubview(fromView)
            contentView.addSubview(toView)
        }
        
        let screenSize = UIScreen.main.bounds.size
        if isPush {
            fromView.frame = CGRect(origin: CGPoint.zero, size: screenSize)
            toView.frame = CGRect(origin: .zero, size: screenSize)
            UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
                fromView.frame = CGRect(origin: CGPoint.zero, size: screenSize)
                toView.frame = CGRect(origin: .zero, size: screenSize)
            }) { (finished: Bool) in
                transitionContext.completeTransition(true)
            }
        } else {
            toView.frame = CGRect(origin: .zero, size: screenSize)
            fromView.frame = CGRect(origin: CGPoint.zero, size: screenSize)
            UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
                fromView.alpha = 0
            }) { (finished: Bool) in
                transitionContext.completeTransition(true)
            }
        }
    }
    
}
