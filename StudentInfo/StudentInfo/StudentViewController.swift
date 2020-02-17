import UIKit

class StudentViewController: UIViewController {

  weak var delegate: StudentDelegate?
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var mobile: UITextField!
    @IBOutlet weak var address: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: Any) {
        self.dismiss(animated: true) {
            if self.delegate != nil {
                let fName = self.firstName.text!
                let lName = self.lastName.text!
                let mobile = self.mobile.text!
                let address = self.address.text!
                
                let student = Student(firstName: fName, lastName: lName, mobile: mobile, address: address)
                
                self.delegate?.showStrudentInfo(student: student)
            } else {
                print("Deelegate Not Found")
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
