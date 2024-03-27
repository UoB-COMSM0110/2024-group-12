class CharacterSelectionMenu {
    void displayMenu() {
        // Clear the screen
        background(0); // Adjust background color as needed

        // Set text properties
        textSize(24);
        textAlign(CENTER, CENTER);
        fill(255); // Set text color to white

        // Display menu title
        text("Select Character", width / 2, height / 4);

        // Display character options
        for (int i = 0; i < CharacterType.values().length; i++) {
            CharacterType characterType = CharacterType.values()[i];
            String optionText = characterType.toString(); // Convert enum to string
            text(optionText, width / 2, height / 3 + i * 40); // Adjust position as needed
        }
    }
}
