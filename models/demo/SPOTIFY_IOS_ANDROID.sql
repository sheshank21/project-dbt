{{
    config
    (
        materialized='table'
    )
}}


with spotify_history as
(
    SELECT SPOTIFY_TRACK_URI, CAST(TS AS TIMESTAMP) as TIMESTAMP ,PLATFORM, MS_PLAYED, TRACK_NAME, ARTIST_NAME, ALBUM_NAME, REASON_START, REASON_END, SHUFFLE, SKIPPED
    FROM DBT_DB.PUBLIC.SPOTIFY_HISTORY
    WHERE PLATFORM IN ('iOS','android')
)

SELECT * FROM spotify_history