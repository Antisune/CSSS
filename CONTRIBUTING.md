Contributing
============

All contributions from approved CSSS members are welcome.

In order to be able to contribute to the site, you'll need to have [Ruby](https://www.ruby-lang.org/en/) with the [Jekyll](http://jekyllrb.com/) gem and Git installed on your system.

### Cloning the repository for the first time

Simply navigate in the command line to the directory where you'd like to clone the website and type the following:

`git clone https://github.com/abejfehr/CSSS.git`

This will create a CSSS directory in the folder you're in.

### Adding textbooks for the Textbook Trade

I've tried to make it as easy as possible to add/remove/modify textbook information for the textbook trade. The list of textbooks is written in JSON, and can be found in `CSSS/textbooktrade/index.html`. Simply open that file up in your favorite text editor and find the line that says `var textbooks = [`.

Between the square brackets(`[]`), you'll find the list of textbooks for sale. You can basically add new ones by pattern matching the existing ones.

All of the fields for each object are as follows:

* **title** (mandatory): The title of the book
* **author** (mandatory): The author of the book
* **edition** (mandatory): The verbal word of the edition. Examples include "Fifth", "Fourth Canadian", etc. The word "Edition" is automatically appended to the end. I should probably make this optional
* **course** (optional): The course code that uses the book. If not given, it's not displayed in the list
* **condition** (optional): The condition of the book. Examples include "Good", "New", etc. If not given, it's not displayed in the list
* **cover** (optional): A URL for the book's cover photo. If not given, a book with a question mark is displayed instead as the cover.
* **price** (mandatory): The numerical price of a book, rounded to two decimal places(just like cents).
**Tip:** Remember to try your changes locally before submitting. Malformed JSON will prevent the entire list from being rendered, resulting in a page with no textbooks.

#### Troubleshooting

If the JSON is malformed and the list doesn't appear, check to make sure you're not missing any commas. For example, the following will fail:

    [
      {
        title: "Some book"
        author: "Some guy"
      }
      {
        title: "Some other book",
        author: "Some other guy"
      }
    ]

Between each object(`{}`) and between each property, a comma is needed to separate them.

Similarly, this is another bad example because of too many commas:

    [
      {
        title: "Some book",
        author: "Some guy",
      },
      {
        title: "Some other book",
        author: "Some other guy",
      },
    ]

It's invalid because there's a comma after the *last* object and the *last* property. Those don't need commas.

What follows is a well-formed example:

    [
      {
        title: "Some book",
        author: "Some guy"
      },
      {
        title: "Some other book",
        author: "Some other guy"
      }
    ]

### Previewing the website locally

You can preview the website at any time by running `jekyll serve` from the root of the CSSS directory

### Publishing your changes

You'll need to "push" these changes for them to become live. This is a several step process.

**Tip:** At any time, you can type `git status` to see the current state of affairs, including which branch you're on, what files have been modified, and whether the modified files have been staged or not.

1. *Stage* that files. This can be done by typing `git add <filename>` for each individual file or `git add --all` to stage all modified files.
2. *Commit* the staged files. This can be done by typing `git commit -m "<commit message>"`.
3. *Push* the committed changes to the remote. Simply type `git push origin gh-pages`.

The branch `gh-pages` is the primary branch for this website, since that's the branch github uses to publish the website publically.