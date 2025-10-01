## IMPORTANT

- This extension version will be compatible with the GM 2022.0.1 LTSr1 (upon release)

## CHANGES SINCE ${releaseOldVersion}

https://github.com/YoYoGames/GMEXT-GooglePlayInstant/compare/${releaseOldVersion}...${releaseNewVersion}

## DESCRIPTION

Adds **Google Play Instant** helpers for GameMaker so you can detect instant-app context, store/read a small “cookie” for carryover data, check device support, and present the official **Install Prompt** to upgrade users to the full app—all surfaced back to GML via Async Social events.

## FEATURES

- Detects whether the game is running as a **Google Play Instant** app.
- Reads and writes the **Instant App cookie** (small persistent payload).
- Reports the device’s **Instant Apps availability** (enabled/disabled).
- Attempts to fetch **Instant App data** and reports success/error.
- Triggers the native **Install Prompt** with a referrer string.
- Emits compact **Async Social** events for each operation.

## DOCUMENTATION

The full documentation of the API is included in the extension asset (included files).