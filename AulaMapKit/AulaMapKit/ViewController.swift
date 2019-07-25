//
//  ViewController.swift
//  AulaMapKit
//
//  Created by student on 25/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    
    @IBOutlet weak var meuMapaMKMapView: MKMapView!
    
    var locationManager = CLLocationManager()
    var userLocation = CLLocation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        meuMapaMKMapView.showsUserLocation = true
        setupLocationManager()
        addGesture()
        meuMapaMKMapView.setUserTrackingMode(.follow, animated: true)
        
    }

    // primeira função - Configurações do mapa
    func setupLocationManager () {
        
        locationManager.delegate = self
        
        // definindo melhor localização
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        // solicitando permissáo do usuário
        locationManager.requestWhenInUseAuthorization()
        
        // ciclo de atualização do mapa
        locationManager.startUpdatingLocation()
    }
    
    // segunda função - Validando a existencia da localização atual
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if locations.count > 0 {
            if let location = locations.last{
                userLocation = location
                print ("A localização do usuário é \(userLocation.coordinate)")
            }
        }
    }
    
    // terceira função - Reconhecer gestos realizados na tela do dispositivo
    @objc func addAnnotationToMap (gestureRecognizer: UIGestureRecognizer) {
        
        // constante que recebe o toque na tela do dispositivo
        let touchPoint = gestureRecognizer.location(in: meuMapaMKMapView)
        
        // constante que recebe as coordenadas da localização
        let newCoordinate: CLLocationCoordinate2D = meuMapaMKMapView.convert(touchPoint, toCoordinateFrom: meuMapaMKMapView)
        
        // constante para definir as anotações a serem exibidas no pino
        let newAnnotation = MKPointAnnotation()
        
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "Gerson"
        newAnnotation.subtitle = String(describing: "Latitude: \(newCoordinate.latitude) / \(newCoordinate.longitude)")
        
        meuMapaMKMapView.addAnnotation(newAnnotation)
    }
    
    // quarta função - criar um gesto no mapa
    func addGesture() {
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(addAnnotationToMap(gestureRecognizer:)))
        longPress.minimumPressDuration = 0.8
        
        meuMapaMKMapView.addGestureRecognizer(longPress)
    }

}

