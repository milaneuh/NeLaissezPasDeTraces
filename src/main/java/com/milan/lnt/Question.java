package com.milan.lnt;

import java.util.Collection;

public record Question(int index, String question, Collection<Choice> choices, String answer) {
}
