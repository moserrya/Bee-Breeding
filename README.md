This challenge originated with the 1999 ACM Programming Contest World Finals. The core of the problem is this: Take a honeycomb, with one cell arbitrarily labeled 1 with the surrounding cells labeled clockwise in the following fashion:

<pre>
      __    __    __    __       
     __\ /__\ /__\  /__\  /__    
 __/  \__/  \__/53\__/  \__/  \__
/  \__/  \__/52\__/54\__/  \__/  \
\__/  \__/51\__/31\__/55\__/  \__/
/  \__/50\__/30\__/32\__/56\__/  \
\__/49\__/29\__/15\__/33\__/57\__/
/  \__/28\__/14\__/16\__/34\__/  \
\__/48\__/13\__/ 5\__/17\__/58\__/
/  \__/27\__/ 4\__/ 6\__/35\__/  \
\__/47\__/12\__/ 1\__/18\__/59\__/
/  \__/26\__/ 3\__/ 7\__/36\__/  \
\__/46\__/11\__/ 2\__/19\__/60\__/
/  \__/25\__/10\__/ 8\__/37\__/  \
\__/45\__/24\__/ 9\__/20\__/61\__/
/  \__/44\__/23\__/21\__/38\__/  \
\__/70\__/43\__/22\__/39\__/62\__/
/  \__/69\__/42\__/40\__/63\__/  \
\__/  \__/68\__/41\__/64\__/  \__/
/  \__/  \__/67\__/65\__/  \__/  \
\__/  \__/  \__/66\__/  \__/  \__/
/__\  /__\  /__\__/__\  /__\   

</pre>

Design a program that finds the shortest distance between any two cells. For example, the distance between cells 19 and 30 is 5.

The time complexity of this solution is O(1), assuming n is the number of cells.

To try it out:

```ruby
Hive.len_shortest_path(cell1, cell2)
```

hive_spec.rb includes complete test coverage and shows how to use all of the methods.