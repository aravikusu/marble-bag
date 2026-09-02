# MarbleBag for Godot
<p align="center">
    <img src="addons/marblebag/icon.svg" alt="Logo" width="200">
    <br />
    <i>Control your randomness.</i>
</p>

MarbleBag is a way to control your randomness. This addon is a Godot recreation of the idea that [candlesan](https://www.youtube.com/@candlesan) originally came up with. You can see a video describing the idea behind it [here on YouTube](https://youtu.be/2anY9ICA-Pg?si=MDT9sQu9sthzqiQP).

Essentially, MarbleBag lets you send in a random amount of things, and then call the `next()` function to get the next "marble". When the bag is empty, it resets to a new randomized order of the original items it had.

Example: There's a 20% chance for an attack to poison you. You can then throw in 10 "marbles", let's say that they are `booleans` in this case, two of which are `true` and 8 of which are `false`. When you call `next()`, it then grabs a "marble". It was false. That marble is now out of the bag, so the next draw only has 9. This continues until the bag is empty and resets.

This gives a more "controlled" RNG. A 25% chance will feel like a 25% chance.

Code example:


```gdscript
    # Setting up a MarbleBag with booleans
    var bag: MarbleBag = MarbleBag.new([false, false, false, false, false, false, true, true])
    # Grabbing it
    var next: bool = bag.next()

    if next:
        # code
```

In examples I've used `booleans` as the type. But the type can be anything. Custom classes, dictionaries, strings, more MarbleBags...

```gdscript
    var rare_loot_table_bag: MarbleBag = MarbleBag.new("Twisted Bow", "500 Magic Logs", "'You did it' sticker")
    var main_bag: MarbleBag = MarbleBag.new("Attack potion", "Raw chicken", rare_loot_table_bag)
```
Create the MarbleBag(s) that suit your needs. Not every games wants a perfect 1/4. Perhaps you want a "if you hit the odds, you get ONE thing, then it resets". Then you can simply call the `reset()` function to reset the bag and begin anew.

Current Version: 1.0.0

