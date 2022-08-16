//
//  ViewController.swift
//  CameraDisplayPhoto
//
//  Created by scholar on 8/15/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        
    }

    
    //choose photo from Photo Library on device
    @IBAction func choosePhotoTapped(_ sender: Any) {
        
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    //choose to take a picture on device
    @IBAction func takeSelfieTapped(_ sender: Any) {
    
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    //show the photo in the image view
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = selectedImage
            
            //dismiss image picker view to see home screen again
            imagePicker.dismiss(animated: true, completion: nil)
        }
    }



}

