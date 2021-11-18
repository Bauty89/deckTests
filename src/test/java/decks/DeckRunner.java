package decks;

import com.intuit.karate.junit5.Karate;

public class DeckRunner {
    @Karate.Test
    Karate testDecks() {
        return Karate.run("deck").relativeTo(getClass());
    }

}
