# Purpose
Practice a design pattern of one view controller setting a block property on a second view controller.
The presented view controller has a block property.
The presenting view controller sets the block property in prepareForSegue.

# References
BlockPlay project by Beepscore.

http://stackoverflow.com/questions/3935574/can-i-use-objective-c-blocks-as-properties/20760583#20760583
suggests
@property (copy)void (^doStuff)(void);

Apple Blocks Programming Topics Getting Started with Blocks

# Results
Blocks can be used instead of delegates.

## Block pattern
Object "called" can have a block property.
Object "caller" can create a block, sets property on object "called" to pass the block.
The block can contain info from within the scope of "caller".
"called" can execute the block.
If the block takes arguments, "called" can supply them.
This way, called can execute the block code using state from both caller and called.

This pattern eliminates the need for a delegate protocol.

This pattern keeps related code within the caller, making it easier to write and read.
The caller specifies the block code, typically using locally scoped variables.
The programmer can write and see the block code from the caller object, then just pass the block to the called object to run it.
Generally this is clearer and shorter than delegate having to extract info about delegator object.
e.g. Avoids delegate tableViewController extracting info about delegator tableView from delegate method argument "tableView".
If the block needs to use information from the called object, the block can specify parameters and the called object can supply the arguments to the block when it runs the block.
