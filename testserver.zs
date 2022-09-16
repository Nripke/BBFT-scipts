import crafttweaker.api.recipe.Brewing;
import mods.create.SandPaperPolishingManager;

var diamond = <item:minecraft:diamond>;
var coal = <item:minecraft:coal>;
var empty = <item:minecraft:air>;
var waterbottle = <item:minecraft:potion>.withTag({Potion: "minecraft:water" as string});
var cobble = <item:minecraft:cobblestone>;
var andesite = <item:minecraft:andesite>;

// SandPaperPolishingManager.addRecipe(name as string, output as Percentaged<IItemStack>, input as IIngredient, duration as int) as void
<item:create:sand_paper>.maxDamage = 256;

<recipetype:create:sandpaper_polishing>.addRecipe("polish.cobble", andesite % 100, cobble, 200);

craftingTable.addShaped("coalcompression", diamond, [
    [coal, coal, coal], 
    [coal, empty, coal], 
    [coal, coal, coal]
]);

brewing.addRecipe(<item:minecraft:dirt>, <item:minecraft:dried_kelp>, waterbottle);