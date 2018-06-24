% Documentation as a Code (DaaC)
% Igor khorlo, Syneos Health

# Abstract

Have you ever been annoyed by Microsoft Word? 
This moment when you carefully edit your document and then one inaccurate action spoils the formatting. 
Or when you are trying to semantically maintain styles in the document (like headers, lists, image captures, etc.) and then, in the end, find that some parts of the text have inconsistent font attributes or indentation. 
This presentation will reveal another approach for documentation creation — separation of concerns between the actual content and styling. 
Putting meaning and semantics on one side and decoration and styling on another side. 
This separation will make possible to render the same content to different file types like HTML, PDF, DOCX, and many others. Storing content in a lightweight markup language like [Markdown][markdown-fireball], [AsciiDoc], etc. (which is basically a plain text) will make it possible to use developer tools to boost your productivity:

- text editors (like [Sublime Text], [Vim], [Emacs], [Atom], [Visual Studio Code], [Brackets])
- version control systems ([Git], [Subversion][svn], [Mercurial][hg])

Forget about buggy "track changes" from Word. 
Version control system will provide an easy to use traceability out of the box and information about who and when wrote or changed a particular word in the documentation. 
Collaboration possibilities with version control systems and tools like [GitHub] and [GitLab] will open new horizons which were unimaginable before[^HoTT].

[^HoTT]: Just an example when a group of two dozen mathematicians wrote a 600-page book on ["Homotopy Type Theory"][hott-book] in less than half a year using git and github.com. 
    This is quite amazing since mathematicians do not normally work together in large groups like that. 
    The story can be read [here][hott-story].

When you try to use this approach to write your documentation or manage content which requires collaboration you will never think about changing back to Microsoft Word and similar [WYSIWYG] systems.

PS: this abstract was written in Markdown and then converted to PDF using [pandoc] you can find it on [github repository](https://github.com/sspkmnd/basel-sde2018) :)

# Contact

Igor Khorlo

Syneos Health

Berlin, Germany

primary email — [igor.khorlo@gmail.com](mailto:igor.khorlo@gmail.com)

work email — [igor.khorlo@syneoshealth.com](mailto:igor.khorlo@syneoshealth.com)


[Sublime Text]: https://www.sublimetext.com/
[vim]: https://en.wikipedia.org/wiki/Vim_(text_editor)
[emacs]: https://en.wikipedia.org/wiki/Emacs
[atom]: https://atom.io/
[Visual Studio Code]: https://code.visualstudio.com/
[brackets]: http://brackets.io/
[git]: https://git-scm.com/
[svn]: https://subversion.apache.org/
[hg]: https://en.wikipedia.org/wiki/Mercurial
[github]: https://github.com/
[gitlab]: https://about.gitlab.com/
[markdown-fireball]: https://daringfireball.net/projects/markdown/
[hott-book]: https://homotopytypetheory.org/book/
[hott-story]: http://math.andrej.com/2013/06/20/the-hott-book/
[pandoc]: https://pandoc.org/
[wysiwyg]: https://en.wikipedia.org/wiki/WYSIWYG]
[AsciiDoc]: http://asciidoc.org/