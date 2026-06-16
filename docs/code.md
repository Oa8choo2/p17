# Things about code

Fig caption on a code block

See <https://web.archive.org/web/20171113065316/http://jspro.brothercake.com/code-examples/principle2.html>
and <https://www.sitepoint.com/best-practice-for-code-examples/>


Fig caption and markdown
https://stackoverflow.com/questions/19331362/using-an-image-caption-in-markdown-jekyll

The Caption extension adds the ability to add captions to any Markdown block, including images, tables, and code blocks. Enable it via:
https://zensical.org/docs/setup/extensions/python-markdown-extensions/#caption

<p id="example1-description">
			This is the descriptive text that comes before the code example, 
			talking about whatever the code is an example of:
		</p>

		<figure>
			<figcaption id="example1-caption">This is the caption</figcaption>
<pre aria-describedby="example1-description" aria-labelledby="example1-caption"><code>//try to get to sleep unless there's too much noise in the room
function getToSleep()
{
	while(noise &lt;= 10 &amp;&amp; sleep !== "zzz")
	{
		sheep ++;
	}
	if(noise &gt; 10)
	{
		return false;
	}
	return true;
}</code></pre>
		</figure>

---
This is the descriptive text that comes before the code example, 
talking about whatever the code is an example of:


