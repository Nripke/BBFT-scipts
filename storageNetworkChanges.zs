var diamond_block = <item:minecraft:diamond_block>;
var sea_lantern = <item:minecraft:sea_lantern>;
var ender_chest = <item:minecraft:ender_chest>;
var nether_star = <item:minecraft:nether_star>;
var cremote = <item:storagenetwork:crafting_remote>;
var remote = <item:storagenetwork:inventory_remote>;

var mcrafter = <item:create:mechanical_crafter>;
var gsheet = <item:create:golden_sheet>;
var cterminal = <item:storagenetwork:request>;
var terminal = <item:storagenetwork:inventory>;
var cable = <item:storagenetwork:kabel>;
var storageroot = <item:storagenetwork:master>;

var andesitecase = <item:create:andesite_casing>;
var etube = <item:create:electron_tube>;
var pstoreinterface = <item:create:portable_storage_interface>;


var iron = <item:minecraft:iron_ingot>;
var magma_cream = <item:minecraft:magma_cream>;
var glowstone_dust = <item:minecraft:glowstone_dust>;
var empty = <item:minecraft:air>;


//Basic Terminal
craftingTable.remove(terminal);
craftingTable.addShaped("createterminal", terminal, [
    [iron, cable, iron],
    [cable, pstoreinterface, cable],
    [iron, cable, iron]
]);

//Storage Root
craftingTable.remove(storageroot);
craftingTable.addShaped("createroot", storageroot, [
    [iron, cable, iron],
    [cable, andesitecase, cable],
    [iron, cable, iron]
]);

//Crafting Terminal
craftingTable.remove(cterminal);
craftingTable.addShaped("craftrequesttable", cterminal, [
    [gsheet, mcrafter, gsheet],
    [mcrafter, terminal, mcrafter],
    [gsheet, mcrafter, gsheet]
]);

//Basic Remote
craftingTable.remove(remote);
craftingTable.addShaped("balancedremote", remote, [
    [magma_cream, glowstone_dust, magma_cream],
    [gsheet, terminal, gsheet],
    [magma_cream, empty, magma_cream]
]);