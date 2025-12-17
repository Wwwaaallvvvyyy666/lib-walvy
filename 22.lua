url = "example.com"
output = ""

if url.startswith(("http://", "https://")):
    output = f'loadstring(game:HttpGet("{url}"))()'
else:
    output = f'loadstring(game:HttpGet("https://{url}"))()'

print(output)
