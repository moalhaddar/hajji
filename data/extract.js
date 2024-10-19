const rows = document.querySelectorAll('tr:has(td:nth-child(5):last-child)');
const data = []
for (row of rows) {
    const emoji = row.children[1].children[0].href.split("#")[1].split("_").map(code => {
        return String.fromCodePoint(parseInt(code, 16))
    }).join("");
    const shortName = row.children[3].innerHTML;
    const keywords = row.children[4].innerHTML.replaceAll("\n", "");
    data.push(`${emoji} ${shortName} | ${keywords}`)
}

let a = document.createElement('a');
a.href = "data:application/octet-stream,"+encodeURIComponent(data.join("\n"));
a.download = 'emojies.txt';
a.click();
