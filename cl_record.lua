RegisterCommand('record', function()
  lib.showContext('sync_recmenu')
end, false)

lib.registerContext({
  id = 'sync_recmenu',
  title = 'Recording Menu',
  options = {
    {
      title = 'Rockstar Editor',
      icon = 'clapperboard',
      onSelect = function()
        ActivateRockstarEditor()
        NetworkSessionLeaveSinglePlayer()
      end,
    },
    {
      title = 'Start Recording',
      icon = 'video',
      onSelect = function()
        StartRecording(1)
      end,
    },
    {
      title = 'Stop & Delete',
      icon = 'trash',
      onSelect = function()
        StopRecordingAndDiscardClip()
      end,
    },
    {
      title = 'Stop & Save',
      icon = 'floppy-disk',
      onSelect = function()
        StopRecordingAndSaveClip()
      end,
    }
  }
})