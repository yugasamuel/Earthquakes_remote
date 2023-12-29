# Earthquakes_remote
Tour of the app

Earthquakes is developed by following Apple's **SwiftUI** module. This project serves as a practical exercise to deepen my knowledge to load and manage data over the network in a SwiftUI app.

The United States Geological Survey (USGS) hosts a JSON feed of earthquake data. This module guides us through the development of Earthquakes, an iOS app that queries and presents this data. Here’s a closer look at what I build in this module:

## <span style="font-size:larger;">Earthquakes list</span>
The list displays a navigation view that contains all the earthquakes in the feed. Users can delete individual earthquakes. Tapping the Reload button refreshes the feed and reloads the earthquakes.

<img width="200" alt="Screenshot 2023-12-29 at 17 51 30" src="https://github.com/yugasamuel/Earthquakes_remote/assets/128349047/84d1b132-8505-4195-89fa-091e74ca55c3">

## <span style="font-size:larger;">Earthquake details</span>
The detail view shows more information about an earthquake, including a map of the region surrounding the earthquake. The app fetches and loads the coordinates for each earthquake on demand in the background when it displays the detail view.

<img width="200" alt="Screenshot 2023-12-29 at 17 52 06" src="https://github.com/yugasamuel/Earthquakes_remote/assets/128349047/864dd6f5-f9d4-45d9-a7b3-abb1ee5f8ed7">

## <span style="font-size:larger;">Earthquake data</span>
The USGS data contains many details for earth scientists. As an app for the general population, Earthquakes ignores most of those details and extracts six common properties of each earthquake: the name of the location, time, magnitude, latitude, longitude, and detail. Together, the latitude and longitude make up the geographical coordinates.

<img width="140" alt="Screenshot 2023-12-29 at 17 52 59" src="https://github.com/yugasamuel/Earthquakes_remote/assets/128349047/ed0e448f-dc56-4029-88a3-01d1e1f6438e">

## <span style="font-size:larger;">Networking layer</span>
Earthquakes relies on a network client to load the earthquake data. The client performs network transfers concurrently in the background, keeping the interface responsive.

<img width="140" alt="Screenshot 2023-12-29 at 17 54 48" src="https://github.com/yugasamuel/Earthquakes_remote/assets/128349047/81405c52-bc2a-490a-a40e-056c1ae77fa3">


Link to module: https://developer.apple.com/tutorials/app-dev-training/getting-started-with-earthquakes
