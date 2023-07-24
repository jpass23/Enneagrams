import pytest
import data
import models

def test_get():
    enneagram3 = data.get(3)
    assert enneagram3 != None
    assert type(enneagram3) is models.Enneagram
    assert enneagram3.fear == "Being worthless"

    level1 = enneagram3.levels[1]
    assert level1 != None
    assert level1 == "Self-accepting, inner-directed, and authentic, everything they seem to be. Modest and charitable, self-deprecatory humor and a fullness of heart emerge. Gentle and benevolent."

    assert enneagram3.url == "https://www.enneagraminstitute.com/type-3"

    #assert len(data.enneagrams) == 9  #Access modifiers restrict this test from being run but it succeeds

