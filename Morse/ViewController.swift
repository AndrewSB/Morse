//
//  ViewController.swift
//  Morse
//
//  Created by Andrew Breckenridge on 1/12/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit
import CoreBluetooth
import AudioToolbox


class ViewController: UIViewController, CBCentralManagerDelegate, CBPeripheralDelegate {
    let transferServiceUUID = "926C303E-2624-4222-BEB9-73A148BA7CA0"
    let transferCharactersiticsUUID = "D74ED0AF-B042-46CB-B456-AF98F16ECFDA"
    
    var began: NSDate

//    var centralManager: CBCentralManager
//    var peripheral: CBPeripheral
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    required init(coder aDecoder: NSCoder) {
        began = NSDate()
        super.init(coder: aDecoder)
    }

    
    //Morse Touch Interpreter
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        println("began")
        began = NSDate(timeIntervalSinceNow: 0)
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        println("held for \(began.timeIntervalSinceNow)")
    }
    
    //Vibration Handler
    
    
    //CBCentralManagerDelegate
    func centralManager(central: CBCentralManager!, didConnectPeripheral peripheral: CBPeripheral!) {
        
    }
    
    func centralManager(central: CBCentralManager!, didDiscoverPeripheral peripheral: CBPeripheral!, advertisementData: [NSObject : AnyObject]!, RSSI: NSNumber!) {
        
    }
    
    func centralManagerDidUpdateState(central: CBCentralManager!) {
        
    }
    
    
    //CBPeripheralDelegate
    func peripheral(peripheral: CBPeripheral!, didDiscoverServices error: NSError!) {
        
    }
    
    func peripheral(peripheral: CBPeripheral!, didDiscoverCharacteristicsForService service: CBService!, error: NSError!) {
        
    }
    
    func peripheral(peripheral: CBPeripheral!, didUpdateValueForCharacteristic characteristic: CBCharacteristic!, error: NSError!) {
        
    }
    
    
}

