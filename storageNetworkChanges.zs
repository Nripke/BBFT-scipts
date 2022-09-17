//Vanilla Minecraft Items
var iron = <item:minecraft:iron_ingot>;
var magma_cream = <item:minecraft:magma_cream>;
var glowstone_dust = <item:minecraft:glowstone_dust>;
var empty = <item:minecraft:air>;
var gold_block = <item:minecraft:gold_block>;
var sea_lantern = <item:minecraft:sea_lantern>;
var ender_chest = <item:minecraft:ender_chest>;
var nether_star = <item:minecraft:nether_star>;

//Simple Storage Network Items
var storageroot = <item:storagenetwork:master>;
var terminal = <item:storagenetwork:inventory>;
var cterminal = <item:storagenetwork:request>;
var remote = <item:storagenetwork:inventory_remote>;
var cremote = <item:storagenetwork:crafting_remote>;
var networkpicker = <item:storagenetwork:picker_remote>;
var networkcollector = <item:storagenetwork:collector_remote>;
var cable = <item:storagenetwork:kabel>;
var linkcable = <item:storagenetwork:storage_kabel>;
var importcable = <item:storagenetwork:import_kabel>;
var exportcable = <item:storagenetwork:export_kabel>;
var filterimportcable = <item:storagenetwork:import_filter_kabel>;
var filtercable = <item:storagenetwork:filter_kabel>;

//Create Items
var andesite_alloy = <item:create:andesite_alloy>;
var andesitecase = <item:create:andesite_casing>;
var etube = <item:create:electron_tube>;
var pstoreinterface = <item:create:portable_storage_interface>;
var mcrafter = <item:create:mechanical_crafter>;
var gsheet = <item:create:golden_sheet>;
var filter = <item:create:filter>;


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

//Crafting Remote
craftingTable.remove(cremote);
craftingTable.addShaped("balancedcraftingremote", cremote, [
    [sea_lantern, ender_chest, sea_lantern],
    [gold_block, remote, gold_block],
    [sea_lantern, nether_star, sea_lantern]
]);

//Link Cable
craftingTable.remove(linkcable);
craftingTable.addShaped("linkcable", linkcable, [
    [empty, cable, empty],
    [cable, andesite_alloy, cable],
    [empty, cable, empty]
]);

//Filtered Link Cable
craftingTable.remove(filtercable);
craftingTable.addShaped("filterlinkcable", filtercable, [
    [empty, linkcable, empty],
    [linkcable, filter, linkcable],
    [empty, linkcable, empty]
]);

//Filtered Import Cable
craftingTable.remove(filterimportcable);
craftingTable.addShaped("filterimportcable", filterimportcable, [
    [empty, importcable, empty],
    [importcable, filter, importcable],
    [empty, importcable, empty]
]);

//Network Picker
craftingTable.remove(networkpicker);
craftingTable.addShaped("networkpicker", networkpicker, [
    [empty, exportcable, empty],
    [exportcable, remote, exportcable],
    [empty, exportcable, empty]
]);

//Network Collector
craftingTable.remove(networkcollector);
craftingTable.addShaped("networkcollector", networkcollector, [
    [empty, importcable, empty],
    [importcable, remote, importcable],
    [empty, importcable, empty]
]);