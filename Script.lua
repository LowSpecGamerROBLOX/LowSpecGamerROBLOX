local function ExecuteScript()

	-- Notifcation when you execute script!

	local CoreGui = game:GetService("StarterGui")

	CoreGui:SetCore("SendNotification", {

		Title = "Low spec gamer ROBLOX Edition",
		Text = "Starting Optimization!",
		Duration = 5;

	})

	wait(5)


	local function Optimize()

		-- Lighting

		local Lighting = game:GetService("Lighting")

		Lighting.GlobalShadows = false

		for _, Instance in pairs(Lighting:GetDescendants()) do

			if Instance:IsA("BloomEffect") then

				Instance:Destroy()

			elseif Instance:IsA("BlurEffect") then

				Instance:Destroy()

			elseif Instance:IsA("ColorCorrectionEffect") then

				Instance:Destroy()

			elseif Instance:IsA("SunRaysEffect") then

				Instance:Destroy()

			elseif Instance:IsA("Atmosphere") then

				Instance:Destroy()

			end

		end

		-- Textures, Particles, Materials, etc

		for _, Instance in pairs(workspace:GetDescendants()) do

			if Instance:IsA("BasePart") then

				Instance.Material = "SmoothPlastic"
				Instance.Reflectance = 0
				Instance.CastShadow = false

			elseif Instance:IsA("Texture") then

				Instance:Destroy()

			elseif Instance:IsA("ParticleEmitter") then

				Instance:Destroy()

			elseif Instance:IsA("Sparkles") then

				Instance:Destroy()

			end

		end

		-- Misc & Terrain Optimizations

		local Terrain = workspace.Terrain

		Terrain.WaterWaveSpeed = 0
		Terrain.WaterWaveSize = 0
		Terrain.WaterReflectance = 0
		Terrain.WaterTransparency = 0


	end

	Optimize()

	wait()

	-- Notifcation when finished optimization!

	CoreGui:SetCore("SendNotification", {

		Title = "Low spec gamer ROBLOX Edition",
		Text = "Optimization Complete, Enjoy!",     
		Duration = 5;

	})


end

ExecuteScript()

wait(13)
script:Destroy()
