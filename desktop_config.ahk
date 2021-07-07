; General desktop use script
; Adds volume control functions, and audio feedback for saving OBS Replay Buffer recordings

; TODO: Add Spotify application volume support. This looks like a good start. https://gist.github.com/jcsteh/7ccbc6f7b1b7eb85c1c14ac5e0d65195

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

+Volume_Up::
Send, {Media_Next}
Return

+Volume_Down::
Send, {Media_Play_Pause}
Return

+Volume_Mute::
Send, {Media_Prev}
Return

+Launch_App2:: ;Calculator by default
Send, {Media_Stop} ; Not sure what this does.
Return

; OBS Replay Buffer Feedback
!F3::
Process, Exist, obs64.exe
If ErrorLevel = 0
{
    SoundPlay, *48, 1 ; Windows error sound
}
Else
{
    SoundPlay, save_replay.wav, 1
}
Return