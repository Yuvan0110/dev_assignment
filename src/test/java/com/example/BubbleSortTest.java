package com.example.bubblesort;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertArrayEquals;

public class BubbleSortTest {
    @Test
    public void testBubbleSort() {
        int[] input = {5, 3, 7, 2, 1, 8, 4};
        int[] expected = {1, 2, 3, 4, 5, 7, 8};
        BubbleSort.bubbleSort(input);
        assertArrayEquals(expected, input);
    }
}
