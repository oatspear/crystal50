// Useful script to extract learnsets from Bulbapedia.
// Finds the level up move tables and outputs text in asm format, e.g.:
//    db 1, TACKLE

(function() {
    const out = [];
    let table = $("#By_leveling_up").parent().next();
    while (table.length != 0 && table[0].nodeName != "TABLE")
        table = table.next();
    let rows = table        // <table>
        .children().eq(0)   // <tbody>
        .children().eq(1)   // <tr>
        .children().eq(0)   // <td>
        .children().eq(0)   // <table>
        .children().eq(1)   // <tbody>
        .children();        // [<tr>]
    rows.each(function(i, r) {
        let cells = $(r).children();
        let lvl = cells.eq(0).contents().eq(1).text().trim();
        lvl = lvl.replace("Evo.", "LEVEL_EVO");
        let move = cells.eq(cells.length > 7 ? 2 : 1).children().children().text().trim();
        move = move.toUpperCase().replace(" ", "_").replace("-", "_");
        out.push(`\tdb ${lvl}, ${move}`);
    });
    console.log(out.join("\n"));
})();
