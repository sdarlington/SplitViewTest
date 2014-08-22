SplitViewTest
=============

Related to this Stack Overflow question: http://stackoverflow.com/questions/25431940/segues-from-a-uisearchcontroller

I'm building an app using the size classes feature of the iOS 8 SDK. Specifically, my root controller is a `UISplitViewController` and a few view controllers down I have a table view with a `UISearchController`.

The table view and the search all work fine.

However... when I perform a "detail segue" (i.e., to the detail view on iPad and push onto the navigation stack on iPhone) from the search view controller it is missing the reference to the split view controller. This means that, on the iPhone, it is missing the "back" button and it appears as a full screen modal on the iPad.

I can't "manually" set the split view controller as the `splitViewController` property is read-only.

It _does_ have the `presentingViewController` property set so the following works:

    [self.presentingViewController performSegueWithIdentifier:@"showDetail" sender:self];

But that means the master and the search view controller are more closely coupled that I would like.

This seems like a pretty common use case... so either I'm missing something pretty obvious or it's (arguably) a bug in a beta OS. I think the former is likely. What am I missing?
