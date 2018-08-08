package ash;

/**
 * An iterator class for any linked lists that
 * has "next" variable in its elements.
 **/
class GenericListIterator<TNode:HasNext<TNode>>
{
    private var current:TNode;

    public inline function new(head:TNode)
    {
        this.current = head;
    }

    public inline function hasNext():Bool
    {
        return current != null;
    }

    public inline function next():TNode
    {
        var node:TNode = current;
        current = current.next;
        return node;
    }
}

private typedef HasNext<T> =
{
    var next:T;
}
