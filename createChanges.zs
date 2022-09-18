import mods.create.SandPaperPolishingManager;

var cobble = <item:minecraft:cobblestone>;
var andesite = <item:minecraft:andesite>;

//Add the ability to sand cobblestone into andesite for andesite alloy production.
<recipetype:create:sandpaper_polishing>.addRecipe("polish.cobble", andesite % 100, cobble, 200);
// SandPaperPolishingManager.addRecipe(name as string, output as Percentaged<IItemStack>, input as IIngredient, duration as int) as void
//^Structure for sanding recipies

//Increase sandpaper durability to be kinder to the early-game.
<item:create:sand_paper>.maxDamage = 256;