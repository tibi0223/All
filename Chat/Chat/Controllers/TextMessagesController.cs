using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Chat.Data;
using Chat.Models;

namespace Chat.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TextMessagesController : ControllerBase
    {
        private readonly ChatContext _context;

        public TextMessagesController(ChatContext context)
        {
            _context = context;
        }

        // GET: api/TextMessages
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TextMessage>>> GetTextMessage()
        {
          if (_context.TextMessage == null)
          {
              return NotFound();
          }
            return await _context.TextMessage.ToListAsync();
        }

        // GET: api/TextMessages/5
        [HttpGet("{id}")]
        public async Task<ActionResult<TextMessage>> GetTextMessage(int id)
        {
          if (_context.TextMessage == null)
          {
              return NotFound();
          }
            var textMessage = await _context.TextMessage.FindAsync(id);

            if (textMessage == null)
            {
                return NotFound();
            }

            return textMessage;
        }

        // PUT: api/TextMessages/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTextMessage(int id, TextMessage textMessage)
        {
            if (id != textMessage.Id)
            {
                return BadRequest();
            }

            _context.Entry(textMessage).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TextMessageExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/TextMessages
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<TextMessage>> PostTextMessage(TextMessage textMessage)
        {
          if (_context.TextMessage == null)
          {
              return Problem("Entity set 'ChatContext.TextMessage'  is null.");
          }
            _context.TextMessage.Add(textMessage);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetTextMessage", new { id = textMessage.Id }, textMessage);
        }

        // DELETE: api/TextMessages/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteTextMessage(int id)
        {
            if (_context.TextMessage == null)
            {
                return NotFound();
            }
            var textMessage = await _context.TextMessage.FindAsync(id);
            if (textMessage == null)
            {
                return NotFound();
            }

            _context.TextMessage.Remove(textMessage);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool TextMessageExists(int id)
        {
            return (_context.TextMessage?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
