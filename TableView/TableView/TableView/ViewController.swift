import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableViews: UITableView!
    var foods = [String]()
    
    var isEnglish = true // Varsayılan olarak İngilizce seçili
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foods = ["Lahmacun", "Köfte", "Döner", "Ayran", "Su", "Tavuk", "Pilav", "Dürüm"]
        tableViews.delegate = self
        tableViews.dataSource = self
        
        // Switch'i Türkçe olarak ayarla
        let switchButton = UISwitch()
        switchButton.addTarget(self, action: #selector(switchButton(_:)), for: .valueChanged)
        switchButton.onTintColor = .systemGreen
        switchButton.isOn = isEnglish
        let switchBarItem = UIBarButtonItem(customView: switchButton)
        navigationItem.rightBarButtonItem = switchBarItem
        updateLanguage()
    }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            // Ekran görüntülenirken İngilizce metinleri göster
            updateLanguage()
        }
        
    @IBAction func switchButton(_ sender: UISwitch) {
        isEnglish = sender.isOn
        updateLanguage()
    }
    
    func updateLanguage() {
        tableViews.reloadData()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellName", for: indexPath)
        let foodName = foods[indexPath.row]
        cell.textLabel?.text = localizedString(key: foodName)
        return cell
    }
    
    func localizedString(key: String) -> String {
        let languageCode = isEnglish ? "en" : "tr"
        
        if let path = Bundle.main.path(forResource: languageCode, ofType: "lproj"),
           let bundle = Bundle(path: path) {
            return NSLocalizedString(key, tableName: "Localizable", bundle: bundle, value: "", comment: "")
        }
        
        return key
    }
    
}
