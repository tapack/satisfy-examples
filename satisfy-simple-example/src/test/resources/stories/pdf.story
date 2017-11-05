Scenario: download and parse PDF file
When open 'http://www.pdf995.com/samples/' page
And user downloads file by click on '//a[text()='pdf.pdf']' and save as 'sample'
Then verify that pdf file contains text 'suite of products' with 'sample'
And verify that pdf file does not contains text 'strange' with 'sample'
And verify that pdf file has '7' occurrences of text 'documents' with 'sample'