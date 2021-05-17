//
//  MemoListViewController.swift
//  test001
//
//  Created by Hajin Jeong on 2021/05/17.
//

import UIKit
import RxSwift
import RxCocoa


class MemoListViewController: UIViewController, ViewModelBindableType {
    
    var viewModel: MemoListViewModel!
    
    @IBOutlet var listTableView: UITableView!
    @IBOutlet var addButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func bindViewModel() {
        viewModel.title
            .drive(navigationItem.rx.title)
            .disposed(by: rx.disposeBag)
        
        viewModel.memoList
            .bind(to: listTableView.rx.items(cellIdentifier: "cell")) { row, memo, cell in cell.textLabel?.text = memo.content
            }
            .disposed(by: rx.disposeBag)
    }

}
