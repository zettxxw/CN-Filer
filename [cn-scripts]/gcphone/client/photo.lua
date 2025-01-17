-- Author: Xinerki (https://forum.fivem.net/t/release-cellphone-camera/43599)

phone = false
phoneId = 0
local timer = 0

RegisterNetEvent('camera:open')
AddEventHandler('camera:open', function()
    CreateMobilePhone(1)
	CellCamActivate(true, true)
	phone = true
    --ePhoneOutAnim()
end)

frontCam = false

function CellFrontCamActivate(activate)
	return Citizen.InvokeNative(0x2491A93618B7D838, activate)
end

Citizen.CreateThread(function()
	DestroyMobilePhone()
	while true do
		Citizen.Wait(0)

		if IsControlJustPressed(1, 177) and phone == true then -- CLOSE PHONE
			DestroyMobilePhone()
			phone = false
			CellCamActivate(false, false)
			if firstTime == true then
				firstTime = false
				Citizen.Wait(2500)
				displayDoneMission = true
			end
		end

		if IsControlJustPressed(1, 27) and phone == true then -- SELFIE MODE
			frontCam = not frontCam
			CellFrontCamActivate(frontCam)
		end

		if phone == true then
			text = ""
			if frontCam then
				text = "Tryk  ~INPUT_CELLPHONE_UP~  for bagkamera"
			else
				text = "Tryk  ~INPUT_CELLPHONE_UP~  for frontkamera"
			end
			DisplayHelpText(text)
			HideHudComponentThisFrame(7)
			HideHudComponentThisFrame(8)
			HideHudComponentThisFrame(9)
			HideHudComponentThisFrame(6)
			HideHudComponentThisFrame(19)
			HideHudAndRadarThisFrame()
		end

		ren = GetMobilePhoneRenderId()
		SetTextRenderId(ren)

		-- Everything rendered inside here will appear on your phone.
    if IsControlJustPressed(1, 74) and phone == true then -- tag et billede manner
      -- exports['screenshot-basic']:requestScreenshot(function(data)
      --   TriggerServerEvent("gcphonePicture", data)
      --   TriggerEvent('chat:addMessage', { template = '<img src="{0}" style="max-width: 300px;" />', args = { data } })
      -- end)


      local CLIENT_ID = 'b5ab566981c375f'
      if timer <= 0 then
        exports['screenshot-basic']:requestScreenshotUpload('https://api.imgur.com/3/upload', 'imgur', {
            headers = {
                ['authorization'] = string.format('Client-ID %s', CLIENT_ID),
                ['content-type'] = 'multipart/form-data'
            }
        }, function(data)

           TriggerServerEvent("gcphonePicture", json.decode(data).data.link)
        end)
        timer = 5000
      end

		end


		SetTextRenderId(1) -- NOTE: 1 is default
	end
end)

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end


Citizen.CreateThread(function()
  while true do
  Citizen.Wait(1000)
    if timer > 0 then
      timer = timer - 1000
    end
  end
end)
