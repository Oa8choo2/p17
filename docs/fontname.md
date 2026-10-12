# Local font

local i.e. on the machine where the browser runs

Linux Biolinum O Bold

```bash
fc-list | grep Biolinum -C 5
        family: "Linux Biolinum O"(s)
        familylang: "en"(s)
        style: "Bold"(s)
        stylelang: "en"(s)
        fullname: "Linux Biolinum O Bold"(s)
        postscriptname: "LinBiolinumOB"(s)
...
``` 

Add css to markdown

```html
<style>
mark {
    color: red !important;
    font-family: "Linux Biolinum O Bold" !important;
}
.p2 {
  font-family: "Linux Biolinum Keyboard O", Arial, Helvetica, sans-serif;
}

</style>
``` 

<style>
mark {
    color: red !important;
    font-family: "LinBiolinumOB" !important;
}
.p2 {
  font-family: "Linux Biolinum Keyboard O", Arial, Helvetica, sans-serif;
}

</style>
<mark>this is red?</mark>
<mark class="p2">this is red?</mark>

