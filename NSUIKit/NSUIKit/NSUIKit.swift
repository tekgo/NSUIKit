//
//  NSUIKit.swift
//  NSUIKit
//
//  Created by Patrick Winchell on 12/3/15.
//  Copyright © 2015 superpartyawesome. All rights reserved.
//

import Foundation

#if os(OSX)

    import Cocoa

    //-------------------------------------------------------------------------
    // MARK: Typealiases

    typealias UIColor = NSColor
    typealias UITouch = NSTouch
    typealias UIFont = NSFont
    typealias UIWindow = NSWindow
    typealias UIImageView = NSImageView
    typealias UIEvent = NSEvent
    typealias UIResponder = NSResponder
    typealias UIApplicationDelegate = NSApplicationDelegate
    typealias CGImage = CGImageRef

    //-------------------------------------------------------------------------
    // MARK: Passthroughs

    func UIRectFill(aRect: NSRect)
    {
        NSRectFill(aRect)
    }

    //-------------------------------------------------------------------------
    // MARK: Constants

    public let UITrackingRunLoopMode = NSEventTrackingRunLoopMode

    //-------------------------------------------------------------------------
    // MARK: UIImage

    public enum UIImageOrientation : Int
    {
        case Up // default orientation
        case Down // 180 deg rotation
        case Left // 90 deg CCW
        case Right // 90 deg CW
        case UpMirrored // as above but image mirrored along other axis. horizontal flip
        case DownMirrored // horizontal flip
        case LeftMirrored // vertical flip
        case RightMirrored // vertical flip
    }

    public class UIImage : NSImage
    {

        //-------------------------------------------------------------------------
        // MARK: Properties

        var scale: CGFloat
        {
            if let rep = self.representations.first
            {
                return CGFloat(rep.pixelsWide) / self.size.width
            }
            return 1
        }

        var imageOrientation: UIImageOrientation { return .Up }

        var CGImage : CGImageRef
        {
            var rect = NSRect(x: 0,y: 0,width: self.size.width,height: self.size.height)
            return self.CGImageForProposedRect(&rect,context: nil,hints: nil)!
        }

        //-------------------------------------------------------------------------
        // MARK: Inits

        public convenience init?(named name: String)
        {
            for bundle in NSBundle.allBundles()
            {
                if let image = bundle.imageForResource(name),
                    let tiff = image.TIFFRepresentation
                {
                    self.init(data: tiff)
                    return
                }
            }
            return nil
        }

        override init(size aSize: NSSize)
        {
            super.init(size: aSize)
        }

        override init?(data: NSData)
        {
            super.init(data: data)
        }

        required public init?(coder aDecoder: NSCoder)
        {
            super.init(coder: aDecoder)
        }

        required public init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
        {
            super.init(pasteboardPropertyList: propertyList, ofType: type)
        }

        required convenience public init(imageLiteral name: String)
        {
            self.init(named: name)!
        }
    }
    
#endif
