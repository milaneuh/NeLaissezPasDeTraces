package com.milan.lnt;

import java.util.Collection;
import java.util.List;

public record Question(int index, String question, List<Choice> choices, String answer) {
}
