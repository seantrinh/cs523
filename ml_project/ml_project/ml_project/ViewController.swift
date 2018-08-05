//
//  ViewController.swift
//  ml_project
//
//  Created by Sean Trinh on 8/5/18.
//  Copyright © 2018 Sean Trinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let model = wine()
    let numberFormatter = NumberFormatter()
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var alcoholLabel: UILabel!
    @IBOutlet weak var alcoholSlider: UISlider!
    @IBOutlet weak var malicAcidLabel: UILabel!
    @IBOutlet weak var malicAcidSlider: UISlider!
    @IBOutlet weak var ashLabel: UILabel!
    @IBOutlet weak var ashSlider: UISlider!
    @IBOutlet weak var alkalinityAshLabel: UILabel!
    @IBOutlet weak var alkalinityAshSlider: UISlider!
    @IBOutlet weak var magnesiumLabel: UILabel!
    @IBOutlet weak var magnesiumSlider: UISlider!
    @IBOutlet weak var totalPhenolsLabel: UILabel!
    @IBOutlet weak var totalPhenolsSlider: UISlider!
    @IBOutlet weak var cultivarLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stackView.setCustomSpacing(30, after: totalPhenolsSlider)
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 2
        updateValues()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateValues() {
        DispatchQueue.main.async {
            self.updateLabels();
            self.predictCultivar();
        }
    }
    func updateLabels() {
        alcoholLabel.text = "Alcohol: \(numberFormatter.string(for: alcoholSlider.value) ?? "0")"
        malicAcidLabel.text = "Malic Acid: \(numberFormatter.string(for: malicAcidSlider.value) ?? "0")"
        ashLabel.text = "Ash: \(numberFormatter.string(for: ashSlider.value) ?? "0")"
        alkalinityAshLabel.text = "Alkalinity Ash: \(numberFormatter.string(for: alkalinityAshSlider.value) ?? "0")"
        magnesiumLabel.text = "Magnesium: \(numberFormatter.string(for: magnesiumSlider.value) ?? "0")"
        totalPhenolsLabel.text = "Total Phenols: \(numberFormatter.string(for: totalPhenolsSlider.value) ?? "0")"
    }
    func predictCultivar() {
        if let prediction = try? model.prediction(alcohol: Double(alcoholSlider.value), malicAcid: Double(malicAcidSlider.value), ash: Double(ashSlider.value), alkalinityAsh: Double(alkalinityAshSlider.value), magneisum: Double(magnesiumSlider.value), totalPhenols: Double(totalPhenolsSlider.value)) {
            cultivarLabel.text = "Cultivar \(prediction.classLabel) (\(prediction.classProbability[prediction.classLabel] ?? 0))"
        }
    }
    
}

