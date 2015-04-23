
import UIKit

class J_WilliamsVC: UIViewController, UIPageViewControllerDataSource
{
    
    
    var pageViewController : UIPageViewController?
    var pageIndex : Int = 0
    //var pageTitles : Array<String> = ["God vs Man", "Cool Breeze", "Fire Sky"]
    var pageArray : Array<String> = ["J_WilliamsPage1", "J_WilliamsPage2"]
    var currentIndex : Int = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        pageViewController = UIPageViewController(transitionStyle: .Scroll, navigationOrientation: .Horizontal, options: nil)
        pageViewController!.dataSource = self
        
        let startingViewController: J_WilliamsVC = viewControllerAtIndex(0)!
        //let secondViewController: J_WilliamsPage1 = viewControllerAtIndex(1)!
        //let thirdViewController: J_WilliamsPage2 = viewControllerAtIndex(2)!
        let viewControllers: NSArray = [startingViewController]
        pageViewController!.setViewControllers(viewControllers as [AnyObject], direction: .Forward, animated: false, completion: nil)
        pageViewController!.view.frame = CGRectMake(0, 0, view.frame.size.width, view.frame.size.height);
        
        addChildViewController(pageViewController!)
        view.addSubview(pageViewController!.view)
        pageViewController!.didMoveToParentViewController(self)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
    {
        var index = (viewController as! J_WilliamsVC).pageIndex
        
        if (index == 0) || (index == NSNotFound) {
            return nil
        }
        
        index--
        
        return viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
    {
        var index = (viewController as! J_WilliamsVC).pageIndex
        
        if index == NSNotFound {
            return nil
        }
        
        index++
        
        if (index == self.pageArray.count) {
            return nil
        }
        
        return viewControllerAtIndex(index)
    }
    
    func viewControllerAtIndex(index: Int) -> J_WilliamsVC?
    {
        if self.pageArray.count == 0 || index >= self.pageArray.count
        {
            return nil
        }
        
        // Create a new view controller and pass suitable data.
        let pageContentViewController = J_WilliamsVC()
        //pageContentViewController.imageFile = pageImages[index]
        //pageContentViewController.titleText = pageArray[index]
        pageContentViewController.pageIndex = index
        currentIndex = index
        
        return pageContentViewController
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int
    {
        return self.pageArray.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int
    {
        return 0
    }
    
}
