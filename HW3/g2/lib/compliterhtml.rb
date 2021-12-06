class compliterhtml
  def self.print(content, bypass_html, title, file = 'index.html')
    html = <<~HTML
      <!DOCTYPE html>
      <html lang="en" dir="ltr">
        <head>
        <meta charset="utf-8">
          <title>#{title}</title>
        </head>
        <body>
          #{content}
        </body>
      </html>
    HTML

    File.write(file, html)
  end
end