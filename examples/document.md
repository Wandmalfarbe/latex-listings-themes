---
title: "Eisvogel Listings Theme"
author: [Pascal Wagler]
date: "2023-03-12"
subject: "Listings"
keywords: [LaTeX, Listings, Theme, Syntax Highlighting]
lang: "en"
geometry:
  - margin=0.3cm
  - top=0.0cm
  - paperheight=9.2cm
  - paperwidth=15cm
disable-header-and-footer: true
...

``` java
public class Example implements LoremIpsum {
    public static void main(String[] args) {
        if(args.length < 2) {
            System.out.println("Lorem ipsum dolor sit amet");
        }
    } // Obscura atque coniuge, per de coniunx
    
    /**
     * Stream example method.
     */
    public static boolean stream() {
        Stream.of(12, 13, 29, 36, 54)
            .filter(i -> {
                return i % 2 == 0;
            })
            .forEach(i -> System.out.println(s));

        return true;
    }
}
```
