RegisterCommand('record', function()
  TriggerEvent('sync_recmenu:openui')
end)

Citizen.CreateThread(function()
  lib.registerContext({
    id = 'sync_recmenu',
    title = 'Recording Menu',
    options = {
      {
        title = 'Rockstar Editor',
        icon = 'clapperboard',
        event = 'sync_recmenu:rockstar',
      },
      {
        title = 'Start Recording',
        icon = 'video',
        event = 'sync_recmenu:record',
      },
      {
        title = 'Stop & Delete',
        icon = 'trash',
        event = 'sync_recmenu:deleterec',
      },
      {
        title = 'Stop & Save',
        icon = 'floppy-disk',
        event = 'sync_recmenu:stoprec',
      }
    }
  })
end)

RegisterNetEvent('sync_recmenu:openui')
AddEventHandler('sync_recmenu:openui', function()
  lib.showContext('sync_recmenu')
end)

AddEventHandler('sync_recmenu:record', function()
  StartRecording(1)
end)

AddEventHandler('sync_recmenu:rockstar', function()
  ActivateRockstarEditor()
  NetworkSessionLeaveSinglePlayer()
end)

AddEventHandler('sync_recmenu:deleterec', function()
  StopRecordingAndDiscardClip()
end)

AddEventHandler('sync_recmenu:stoprec', function()
  StopRecordingAndSaveClip()
end)
