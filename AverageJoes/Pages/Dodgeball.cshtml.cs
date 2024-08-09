using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace AverageJoes.Pages
{
    [BindProperties]
    public class DodgeballModel : PageModel { 

        public String Size1 { get; set; } = string.Empty;

        public String Color1 { get; set; } = string.Empty;

        public String Stitch1 { get; set; }

        public string Message1 { get; set; } = string.Empty;
        public String Size2 { get; set; } = string.Empty;

        public String Color2 { get; set; } = string.Empty;

        public String Stitch2 { get; set; }

        public string Message2 { get; set; } = string.Empty;

        public String Size3 { get; set; } = string.Empty;

        public String Color3 { get; set; } = string.Empty;

        public String Stitch3 { get; set; }

        public string Message3 { get; set; } = string.Empty;

        public String Size4 { get; set; } = string.Empty;

        public String Color4 { get; set; } = string.Empty;

        public String Stitch4 { get; set; }

        public string Message4 { get; set; } = string.Empty;
        public void OnGet()
        {
        }

        public void OnPostShowSelection1()
        {
            Message1 += "I chose " + Size1;
            Message1 += "\n I chose " + Color1;
            Message1 += "\n I chose " + Stitch1;
        }

        public void OnPostShowSelection2()
        {
            Message2 += "I chose " + Size2;
            Message2 += "\n I chose " + Color2;
            Message2 += "\n I chose " + Stitch2;
        }

        public void OnPostShowSelection3()
        {
            Message3 += "I chose " + Size3;
            Message3 += "\n I chose " + Color3;
            Message3 += "\n I chose " + Stitch3;
        }

        public void OnPostShowSelection4()
        {
            Message4 += "I chose " + Size4;
            Message4 += "\n I chose " + Color4;
            Message4 += "\n I chose " + Stitch4;
        }
    }
}
