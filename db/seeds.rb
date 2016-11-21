# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
shure = Manufacturer.create(
			name: "Shure", 
			website: "http://www.shure.com/americas/products/microphones",
			logo: File.new(Rails.root.to_s + '/app/assets/images/manufacturer/shure.png'))
akg = Manufacturer.create(
			name: "AKG", 
			website: "http://www.akg.com/pro/microphones/recording",
			logo: File.new(Rails.root.to_s + '/app/assets/images/manufacturer/akg.jpg'))
neumann = Manufacturer.create(
			name: "Neumann", 
			website: "http://www.neumann.com/?id=current_microphones&lang=en",
			logo: File.new(Rails.root.to_s + '/app/assets/images/manufacturer/neumann.png'))
sennheiser = Manufacturer.create(
			name: "Sennheiser", 
			website: "https://en-us.sennheiser.com/microphones",
			logo: File.new(Rails.root.to_s + '/app/assets/images/manufacturer/sennheiser.png'))
audio_technica = Manufacturer.create(
			name: "Audio Technica", 
			website: "http://www.audio-technica.com/cms/site/c39d4794571cd2a1/",
			logo: File.new(Rails.root.to_s + '/app/assets/images/manufacturer/audiotechnica.jpg'))
royer = Manufacturer.create(
			name: "Royer", 
			website: "http://www.royerlabs.com/products.html",
			logo: File.new(Rails.root.to_s + '/app/assets/images/manufacturer/royer.jpg'))

sm57 = Microphone.create(manufacturer: shure, model: "SM57", kind: "dynamic", phantom: false, polar_pattern: "cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/sm57.jpg'))
sm81 = Microphone.create(manufacturer: shure, model: "SM81", kind: "small-condenser", phantom: true, polar_pattern: "cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/sm81.jpg'))
sm7 = Microphone.create(manufacturer: shure, model: "SM7", kind: "dynamic", phantom: false, polar_pattern: "cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/sm7.jpg'))
c414 = Microphone.create(manufacturer: akg, model: "C414", kind: "large-condenser", phantom: true, polar_pattern: "multi-pattern", image: File.new(Rails.root.to_s + '/app/assets/images/mic/akg414.jpg'))

u87 = Microphone.create(manufacturer: neumann, model: "U87", kind: "large-condenser", phantom: true, polar_pattern: "multi-pattern", image: File.new(Rails.root.to_s + '/app/assets/images/mic/u87.jpg'))
km183 = Microphone.create(manufacturer: neumann, model: "KM183", kind: "small-condenser", phantom: true, polar_pattern: "omni", image: File.new(Rails.root.to_s + '/app/assets/images/mic/km183.jpg'))
km184 = Microphone.create(manufacturer: neumann, model: "KM184", kind: "small-condenser", phantom: true, polar_pattern: "cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/km184.jpg'))

Microphone.create(manufacturer: sennheiser, model: "MD421 II", kind: "dynamic", phantom: false, polar_pattern: "cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/md421.jpg'))
Microphone.create(manufacturer: sennheiser, model: "MKH 416", kind: "shotgun", phantom: true, polar_pattern: "super-cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/mkh416.jpg'))

Microphone.create(manufacturer: audio_technica, model: "AT4033", kind: "large-condenser", phantom: true, polar_pattern: "cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/at4033.jpg'))
Microphone.create(manufacturer: royer, model: "R-121", kind: "ribbon", phantom: false, polar_pattern: "cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/royer121.jpg'))
Microphone.create(manufacturer: royer, model: "SF-2", phantom: false, polar_pattern: "cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/royer2.jpg'))

ac_guitar = Instrument.create(name:"Acoustic Guitar", image: File.new(Rails.root.to_s + '/app/assets/images/instrument/ac_guitar.jpg'))
vocals = Instrument.create(name:"Vocals", image: File.new(Rails.root.to_s + '/app/assets/images/instrument/vocals.jpg'))
piano = Instrument.create(name:"Piano", image: File.new(Rails.root.to_s + '/app/assets/images/instrument/piano.jpg'))
e_guitar = Instrument.create(name:"Electric Guitar", image: File.new(Rails.root.to_s + '/app/assets/images/instrument/e_guitar.jpg'))
e_bass = Instrument.create(name:"Electric Bass", image: File.new(Rails.root.to_s + '/app/assets/images/instrument/e_bass.jpg'))


first_shootout = Shootout.create(instrument_id: ac_guitar.id)
second_shootout = Shootout.create(instrument_id: vocals.id)
third_shootout = Shootout.create(instrument_id: piano.id)
fourth_shootout = Shootout.create(instrument_id: e_guitar.id)
fifth_shootout = Shootout.create(instrument_id: e_bass.id)

ShootoutMicrophone.create(shootout_id: first_shootout.id, microphone_id: sm57.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/akbar.mp3'))
ShootoutMicrophone.create(shootout_id: first_shootout.id, microphone_id: sm81.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/han.mp3'))
ShootoutMicrophone.create(shootout_id: second_shootout.id, microphone_id: sm7.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/luke.mp3'))
ShootoutMicrophone.create(shootout_id: second_shootout.id, microphone_id: c414.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/chewie.mp3'))
ShootoutMicrophone.create(shootout_id: second_shootout.id, microphone_id: u87.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/luke.mp3'))

ShootoutMicrophone.create(shootout_id: third_shootout.id, microphone_id: sm7.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/luke.mp3'))
ShootoutMicrophone.create(shootout_id: third_shootout.id, microphone_id: c414.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/chewie.mp3'))
ShootoutMicrophone.create(shootout_id: third_shootout.id, microphone_id: u87.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/luke.mp3'))

ShootoutMicrophone.create(shootout_id: fourth_shootout.id, microphone_id: sm57.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/akbar.mp3'))
ShootoutMicrophone.create(shootout_id: fourth_shootout.id, microphone_id: sm81.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/han.mp3'))
ShootoutMicrophone.create(shootout_id: fourth_shootout.id, microphone_id: sm7.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/luke.mp3'))
ShootoutMicrophone.create(shootout_id: fifth_shootout.id, microphone_id: c414.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/chewie.mp3'))
ShootoutMicrophone.create(shootout_id: fifth_shootout.id, microphone_id: u87.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/luke.mp3'))

