using System;

namespace Banking_Assignment
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome!!");
            Console.WriteLine();
            int choice;
            Account accountObj = new Account();
            do
            {
                Console.WriteLine("Enter 1 to insert user" +
                    "\n2 to print all the users" +
                    "\n3 to print user by id" +
                    "\n4 to deposit money" +
                    "\n5 to withdraw money" +
                    "\n6 to calculate interest" +
                    "\n7 to exit");
                choice = int.Parse(Console.ReadLine());
                switch (choice)
                {
                    case 1:
                        Console.Write("Enter Account Id :- ");
                        int accoountId = int.Parse(Console.ReadLine());
                        Console.Write("\nEnter Full name :- ");
                        string fullName = Console.ReadLine();
                        Console.Write("\nEnter Account Type :- ");
                        string type = Console.ReadLine();
                        accountObj.Add(accoountId, fullName, type);
                        break;
                    case 2:
                        accountObj.DisplayAccountDetails();
                        break;
                    case 3:
                        Console.Write("Enter id :- ");
                        int accountId = int.Parse(Console.ReadLine());
                        accountObj.SearchByAccountId(accountId);
                        break;
                    case 4:
                        Console.Write("Enter id :- ");
                        accountId = int.Parse(Console.ReadLine());
                        Console.Write("\nEnter Money :- ");
                        int money = int.Parse(Console.ReadLine());
                        accountObj.Deposit(accountId, money);
                        break;
                    case 5:
                        Console.Write("Enter id :- ");
                        accountId = int.Parse(Console.ReadLine());
                        Console.Write("\nEnter Money :- ");
                        money = int.Parse(Console.ReadLine());
                        accountObj.Withdrawl(accountId, money);
                        break;
                    case 6:
                        Console.Write("Enter id :- ");
                        accountId = int.Parse(Console.ReadLine());
                        accountObj.CalculateInterest(accountId);
                        break;
                    case 7: break;
                    default: Console.WriteLine("wrong input!");
                        break;
                }
            }
            while (choice != 7);
            Console.WriteLine("thanks for using!!!");
        }
    }
}
