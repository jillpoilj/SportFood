using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.Entity;

namespace SportFood.Models
{
    public class ProductDatabaseInitializer : DropCreateDatabaseIfModelChanges<ProductContext>
    {
        protected override void Seed(ProductContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetProducts().ForEach(p => context.Products.Add(p));
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category> {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Аминокислоты"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Гейнеры"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Жирные кислоты"
                },
                new Category
                {
                    CategoryID = 4,
                    CategoryName = "Протеин"
                },
                new Category
                {
                    CategoryID = 5,
                    CategoryName = "BCAA"
                },
            };

            return categories;
        }

        private static List<Product> GetProducts()
        {
            var products = new List<Product> {
                new Product
                {
                    ProductID = 1,
                    ProductName = "BPI Sports BLOX",
                    Description = "Эти полипептиды предназначены для увеличения объема и выносливости мышц, а так же поддержания здоровой комплекции.", 
                    ImagePath="bpi-blox.jpg",
                    UnitPrice = 2250,
                    CategoryID = 1
               },
                new Product 
                {
                    ProductID = 2,
                    ProductName = "Gaspari AminoMax 8000",
                    Description = "Отличный помощник в наборе чистой мышечной массы",
                    ImagePath="gaspari.jpg",
                    UnitPrice = 1595,
                     CategoryID = 1
               },
                new Product
                {
                    ProductID = 3,
                    ProductName = "BSN True-Mass",
                    Description = "BSN True-Mass считается действительно работающим и лучшим на сегодняшний день гейнером для набора массы.",
                    ImagePath="Gainer BSN.jpg",
                    UnitPrice = 2980,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 4,
                    ProductName = "CytoSport Monster Mass",
                    Description = "Monster Mass - формула для набора чистой мышечной массы с активаторами mTOR!",
                    ImagePath="cytosport-monster-mass.jpg",
                    UnitPrice = 3780,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 5,
                    ProductName = "Gaspari Real Mass Probiotic Series",
                    Description = "Чтобы стать большим, нужно много есть, именно поэтому компания Gaspari выпустила Real Mass Probiotic Series.",
                    ImagePath="gaspari-real-mass-probiotic-series.jpg",
                    UnitPrice = 1670,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 6,
                    ProductName = "Labrada EFA Lean Gold",
                    Description = "Комплекс, состоящий из незаменимых жирных кислот EFA Lean Gold Essential Fatty Acid теперь доступен в форме мягких желатиновых капсул. Этот комплекс разработан специально для нас, придерживающихся строгой низкоуглеводной диеты!",
                    ImagePath="labrada-efa-lean-gold.jpg",
                    UnitPrice = 9500,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 7,
                    ProductName = "BSN Lean Dessert Protein",
                    Description = " Использование Lean Dessert Protein Shake между основными приемами пищи и как дополнение к основной пище гарантирует, что Ваши мышцы никогда не будут испытывать недостаток в строительном материале (аминокислотах).",
                    ImagePath="lean-dessert-protein.jpg",
                    UnitPrice = 1450,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 8,
                    ProductName = "BSN Amino X",
                    Description = "Откройте беспредельные возможности вашего анаболического потенциала!",
                    ImagePath="bsn-amino-x.jpg",
                    UnitPrice = 1340,
                    CategoryID = 5
                }
            };

            return products;
        }
    }
}