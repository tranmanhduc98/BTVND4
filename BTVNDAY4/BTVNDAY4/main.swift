//
//  main.swift
//  BTVNDAY4
//
//  Created by Trần Thanh Nguyên on 26/05/2021.
//

import Foundation



//1. Liệt kê tất cả các ước số của một số tự nhiên n.
//
//
//
//2, In ra họ và tên của một họ tên cho trước.
//
//(Ví dụ Phan Thanh Hoa -> In ra:  Phan Hoa)
//
//
//
//3, Viết hàm cho phép người dùng chọn đáp án
//
//Question: Đâu không phải là một ngôn ngữ lập trình?
//
//a - Golang
//
//b - Swift
//
//c - Ruby
//
//d - Daily
//
//Cho người dùng chọn a, b, c, d để trả lời!
//
//Yêu cầu người dùng chọn lại đáp án nếu input không đúng, (không đúng nếu input khác a, b, c, d)
//
//In ra trả lời sai nếu đáp án không đúng
//
//In ra trả lời đúng nếu đáp án đúng
//
//
//
//4, Viết chương trình nhập vào số nguyên dương N (N<=32767), in ra màn hình những số hoàn hảo nhỏ hơn N (số hoàn hảo là số bằng tổng các ước số của nó mà không kể chính nó)


//1. Liệt kê tất cả các ước số của một số tự nhiên n.

func lietKeUC(n : Int )
{
   if n <= 0
    {
        print("n ko hợp lệ")
    }
    else
   {
    for uc in 1...n
    {
        if n % uc == 0
        {
            print(uc)
        }
    }
   }
}
lietKeUC(n: 9)
//2, In ra họ và tên của một họ tên cho trước.
//
//(Ví dụ Phan Thanh Hoa -> In ra:  Phan Hoa)

func printName (name : String)
{
    let arrName = name.split(separator: " ")
    let f  = arrName.first
    let l  = arrName.last
    if arrName.count <= 2 {
        print("ho ten chưa đủ")
    }
    else
    {
        print("\(f ?? "z") \(l ?? "z" )")
    }
    
    
}
printName(name: "Trần Mạnh Đức")
//4, Viết chương trình nhập vào số nguyên dương N (N<=32767), in ra màn hình những số hoàn hảo nhỏ hơn N (số hoàn hảo là số bằng tổng các ước số của nó mà không kể chính nó)
func printSHH(N : Int)
{
    if N >  32767 || N <= 0
    {
        print("nhập số N sai")
    }
    else
    {
        var sum : Int = 0
        for i in 1...N
         {
          for j in 1..<i
          {
          if(i % j==0)
             {
             sum = sum + j
              }
           }
            if(sum == i)
            {
             print("\(i)")
                
            }
          }
    }
}

printSHH( N: 5000)
