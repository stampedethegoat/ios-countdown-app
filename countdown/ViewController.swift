import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var debtFreeLabel: UILabel!
    @IBOutlet weak var newYorkLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad();
        self.view.backgroundColor = UIColor.lightGray;
        instantiateDate();
    }
    
    func instantiateDate() -> () {
        // Get current Date
        let currentDay = Calendar.current.ordinality(of: .day, in: .year, for: Date());
        
        // Set Countdown Variables here
        let newYork  = 90;
        let debtFree = 59;

        // Do Minimal Arithmetic to get Date from today
        let daysTilDebtFree = debtFree - currentDay!;
        let daysTilnewYork  = newYork - currentDay!;

        // Align the Text
        debtFreeLabel.textAlignment = .center;
        newYorkLabel.textAlignment = .center;

        // Set the Label's text to the Arith
        debtFreeLabel.text = String (daysTilDebtFree);
        newYorkLabel.text = String (daysTilnewYork);
    }
}
