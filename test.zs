import crafttweaker.api.recipe.Brewing;
import mods.create.SandPaperPolishingManager;

var diamond = <item:minecraft:diamond>;
var coal = <item:minecraft:coal>;
var empty = <item:minecraft:air>;
var waterbottle = <item:minecraft:potion>.withTag({Potion: "minecraft:water" as string});
var cobble = <item:minecraft:cobblestone>;
var andesite = <item:minecraft:andesite>;

// SandPaperPolishingManager.addRecipe(name as string, output as Percentaged<IItemStack>, input as IIngredient, duration as int) as void

<recipetype:create:sandpaper_polishing>.addRecipe("polish.cobble", andesite % 100, cobble, 200);

craftingTable.addShaped("coalcompression", diamond, [
    [coal, coal, coal], 
    [coal, empty, coal], 
    [coal, coal, coal]
]);

brewing.addRecipe(<item:minecraft:dirt>, <item:minecraft:dried_kelp>, waterbottle);

var diamond_block = <item:minecraft:diamond_block>;
var sea_lantern = <item:minecraft:sea_lantern>;
var ender_chest = <item:minecraft:ender_chest>;
var nether_star = <item:minecraft:nether_star>;
var cremote = <item:storagenetwork:crafting_remote>;
var remote = <item:storagenetwork:inventory_remote>;

craftingTable.remove(cremote);
craftingTable.addShaped("expensivecraftingremote", cremote, [
    [sea_lantern, ender_chest, sea_lantern],
    [diamond_block, remote, diamond_block],
    [sea_lantern, nether_star, sea_lantern]
]);

var etube = <item:create:electron_tube>;
var cable = <item:storagenetwork:kabel>;

craftingTable.addShaped("createroot", <item:storagenetwork:master>, [
    [diamond, cable, diamond],
    [cable, etube, cable],
    [diamond, cable, diamond]
]);