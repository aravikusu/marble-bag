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

The entire idea is to appease our brain. It expects 25% to mean "one in four". This keeps the odds our brains expect.

Current Version: 1.0.0

