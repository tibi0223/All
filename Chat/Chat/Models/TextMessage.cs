using System.ComponentModel.DataAnnotations;

namespace Chat.Models
{
    public class TextMessage
    {
        [Key]
        public int Id { get; set; }
        public string User { get; set; }
        public string Message { get; set; }
        public string Time { get; set; }

    }
}
