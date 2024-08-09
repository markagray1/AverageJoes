using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace AverageJoes.Pages
{
    [BindProperties]
    public class GymwearProductsModel : PageModel
    {

        public String Size1 { get; set; } = string.Empty;

        public String Message1 { get; set; } = string.Empty;

        public String Quality1 { get; set; }

        public String Color1 { get; set; }

        public String Size2 { get; set; } = string.Empty;

        public String Message2 { get; set; } = string.Empty;

        public String Quality2 { get; set; }

        public String Color2 { get; set; }

        public String Size3 { get; set; } = string.Empty;

        public String Message3 { get; set; } = string.Empty;

        public String Quality3 { get; set; }

        public String Color3 { get; set; }

        public String Size4 { get; set; } = string.Empty;

        public String Quantity1 { get; set; } = string.Empty;   

        public String Flavor1 { get; set; }

        public String Message4 { get; set; } = string.Empty;

        public String Size5 { get; set; } = string.Empty;

        public String Quantity2 { get; set; } = string.Empty;

        public String Flavor2 { get; set; }

        public String Message5 { get; set; } = string.Empty;

        public String Size6 { get; set; } = string.Empty;

        public String Quantity3 { get; set; } = string.Empty;

        public String Flavor3 { get; set; }

        public String Message6 { get; set; } = string.Empty;

        public void OnGet()
        {
        }

        public void OnPostShowSelection1()
        {
            Message1 += "I chose size " + Size1;
            Message1 += "\n I chose " + Quality1;
            Message1 += "\n I chose " + Color1;
        }
        
        public void OnPostClear1()
        {
            Quality1= string.Empty;
            Size1= string.Empty;
            Color1= string.Empty;
            Message1= string.Empty;
        }
        public void OnPostShowSelection2()
        {
            Message2 += "I chose size " + Size2;
            Message2 += "\n I chose " + Quality2;
            Message2 += "\n I chose " + Color2;
        }

        public void OnPostClear2()
        {
            Quality2 = string.Empty;
            Size2 = string.Empty;
            Color2= string.Empty;
            Message2 = string.Empty;
        }

        public void OnPostShowSelection3()
        {
            Message3 += "I chose size " + Size3;
            Message3 += "\n I chose " + Quality3;
            Message3 += "\n I chose " + Color3;
        }

        public void OnPostClear3()
        {
            Quality3 = string.Empty;
            Size3 = string.Empty;
            Color3 = string.Empty;
            Message3 = string.Empty;
        }

        public void OnPostShowSelection4()
        {
            Message4 += "I chose " + Quantity1;
            Message4 += "\n I chose " + Size4 + " each ";
            Message4 += "\n I chose " + Flavor1;
        }

        public void OnPostClear4()
        {
            Quantity1 = string.Empty;
            Size4 = string.Empty;
            Flavor1 = string.Empty;
            Message4 = string.Empty;
        }

        public void OnPostShowSelection5()
        {
            Message5 += "I chose " + Quantity2;
            Message5 += "\n I chose " + Size5 + " each ";
            Message5 += "\n I chose " + Flavor2;
        }

        public void OnPostClear5()
        {
            Quantity2 = string.Empty;
            Size5 = string.Empty;
            Flavor2 = string.Empty;
            Message5 = string.Empty;
        }

        public void OnPostShowSelection6()
        {
            Message6 += "I chose " + Quantity3;
            Message6 += "\n I chose " + Size6 + " each ";
            Message6 += "\n I chose " + Flavor3;
        }

        public void OnPostClear6()
        {
            Quantity3 = string.Empty;
            Size6 = string.Empty;
            Flavor3 = string.Empty;
            Message6 = string.Empty;
        }
    }
}
