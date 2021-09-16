//
//  NasaCollectionViewController.swift
//  Swift Practice # 78 CollectionView Test
//
//  Created by Dogpa's MBAir M1 on 2021/9/16.
//


import UIKit

private let reuseIdentifier = "Cell"

class NasaCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //透過程式碼變更Cell的尺寸
        let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
        flowLayout?.itemSize = CGSize(width: 100, height: 100)
        flowLayout?.estimatedItemSize = .zero
        
        flowLayout?.minimumLineSpacing = 1 //直立顯示上下的spacing差異
        
        flowLayout?.minimumInteritemSpacing = 1 //直立顯示左右的spacing差異
        
    }
    //自定義照片名稱Array
    let starArray = ["00.jpg","01.jpg","02.jpg","03.jpg","04.jpg","05.jpg","06.jpg","07.jpg","08.jpg","09.jpg","10.jpg","11.jpg","12.jpg","13.jpg","14.jpg"]

    // MARK: UICollectionViewDataSource

    //回傳區域數量
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    //區域數量內的顯示數量
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 100
    }

    //顯示內容
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShowOutsideSpaceCell" , for: indexPath) as! InsertImageCollectionViewCell
    
        if indexPath.item < 15{
            for i in 0...14 {
                if indexPath.item == i {
                    cell.starImageView.image = UIImage(named: starArray[i])
                }
                
            }
        }else{

            cell.starImageView.image = UIImage(named: (starArray.randomElement()!))
        }

        return cell
    }

    // MARK: UICollectionViewDelegate



}
