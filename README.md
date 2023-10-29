# Enneagrams (incomplete)
This is still a **WORK IN PROGRESS** but when finished will be a journaling application for tracking how you are feeling based on enneagrams. Enneagrams are a way of classifying personality. Within each of the 9 personality types, there are 9 levels ranging from level 1 (at your best) to level 9 (at your worst). I had found myself using these levels as a framework for how I was feeling when journaling. It was a good place to start a journal entry and also a nice thing to look back on. So, I wanted to turn that experience into an app.

## Description/Flow

There are three tabs in this app:
1. Today View where you rate how you're feeling that day and can take notes
2. History View where you can scroll back through and read past entries
3. Chart View where you can see a chart of how you were feeling over time

When the app is opened for the first time, the user is prompted to choose an Enneagram personality type. Then, every day that they open the app, they are prompted to rate how they are feeling that day. If they decide they want to change their enneagram type, they can do so in the settings page. This currently deletes all data but that will eventually be changed.

Note: There is currently dummy data hard-coded in but this will later be removed.

## Screenshots:
Note: These views will have much better designs in a final version, this is just a scaffold.

<div align=left>

<img src="https://github.com/jpass23/Enneagrams/blob/main/Screenshots/Choose%20Page.png" width="250"/>

<img src="https://github.com/jpass23/Enneagrams/blob/main/Screenshots/Info%20View.png" width="250"/>

<img src="https://github.com/jpass23/Enneagrams/blob/main/Screenshots/Rate%20View.png" width="250"/>

<img src="https://github.com/jpass23/Enneagrams/blob/main/Screenshots/History%20View.png" width="250"/>

<img src="https://github.com/jpass23/Enneagrams/blob/main/Screenshots/Today%20View.png" width="250"/>

<img src="https://github.com/jpass23/Enneagrams/blob/main/Screenshots/Chart%20View.png" width="250"/>

</div>

## Design Structure

There is a backend written in Python with FastAPI and hosted on [Deta.Space](https://deta.space/).

The main app is written in Swift and uses a rough MVVM structure. However, so far, most of the data is stored in the views or view models. An admitedly poorly named `model.swift` does not contain the modesl but rather contains a `Model` class for the app's central state. This is instantiated once then injected into the environment at the root. Any view that needs to edit the state need only get the Model out of the environment with the `@EnvironmentObject` property wrapper and make changes. Since it is a class (reference type), these changes will be reflected throughout the app.

## Future Plans

1. Clean up the views so they have a better design.
2. Allow for the enneagram type to change without resetting the app.
3. Make the graph interactive and clickable
4. Save everything to UserDefaults.

