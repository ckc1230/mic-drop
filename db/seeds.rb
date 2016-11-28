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
audix = Manufacturer.create(
			name: "Audix", 
			website: "http://www.audixusa.com/index-15.shtml",
			logo: File.new(Rails.root.to_s + '/app/assets/images/manufacturer/audix.png'))
schoeps = Manufacturer.create(
			name: "Schoeps", 
			website: "http://www.schoeps.de/en/products",
			logo: File.new(Rails.root.to_s + '/app/assets/images/manufacturer/schoeps.jpg'))
rode = Manufacturer.create(
			name: "Rode", 
			website: "http://en.rode.com/",
			logo: File.new(Rails.root.to_s + '/app/assets/images/manufacturer/rode.jpg'))
blue = Manufacturer.create(
			name: "Blue", 
			website: "http://www.bluemic.com/",
			logo: File.new(Rails.root.to_s + '/app/assets/images/manufacturer/blue.jpg'))
ev = Manufacturer.create(
			name: "Electro Voice", 
			website: "http://www.electrovoice.com/family.php?id=182",
			logo: File.new(Rails.root.to_s + '/app/assets/images/manufacturer/ev.jpg'))

sm57 = Microphone.create(manufacturer: shure, model: "SM57", kind: "Dynamic", phantom: false, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/sm57.jpg'))
sm57fake = Microphone.create(manufacturer: shure, model: "SM57(fake)", kind: "Dynamic", phantom: false, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/sm57fake.jpg'))
sm81 = Microphone.create(manufacturer: shure, model: "SM81", kind: "Small-Condenser", phantom: true, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/sm81.jpg'))
sm7 = Microphone.create(manufacturer: shure, model: "SM7", kind: "Dynamic", phantom: false, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/sm7.jpg'))
c414 = Microphone.create(manufacturer: akg, model: "C414", kind: "Large-Condenser", phantom: true, polar_pattern: "Multi-Pattern", image: File.new(Rails.root.to_s + '/app/assets/images/mic/akg414.jpg'))

u87 = Microphone.create(manufacturer: neumann, model: "U87", kind: "Large-Condenser", phantom: true, polar_pattern: "Multi-Pattern", image: File.new(Rails.root.to_s + '/app/assets/images/mic/u87.jpg'))
km183 = Microphone.create(manufacturer: neumann, model: "KM183", kind: "Small-Condenser", phantom: true, polar_pattern: "omni", image: File.new(Rails.root.to_s + '/app/assets/images/mic/km183.jpg'))
km184 = Microphone.create(manufacturer: neumann, model: "KM184", kind: "Small-Condenser", phantom: true, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/km184.jpg'))
tlm103 = Microphone.create(manufacturer: neumann, model: "TLM103", kind: "Large-Condenser", phantom: true, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/tlm103.jpg'))
tlm150 = Microphone.create(manufacturer: neumann, model: "M150", kind: "Tube-Condenser", phantom: false, polar_pattern: "Omni-Directional", image: File.new(Rails.root.to_s + '/app/assets/images/mic/tlm150.jpg'))

md421 = Microphone.create(manufacturer: sennheiser, model: "MD421 II", kind: "Dynamic", phantom: false, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/md421.jpg'))
mkh416 = Microphone.create(manufacturer: sennheiser, model: "MKH 416", kind: "Shotgun", phantom: true, polar_pattern: "Super-Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/mkh416.jpg'))
e609 = Microphone.create(manufacturer: sennheiser, model: "e609", kind: "Dynamic", phantom: false, polar_pattern: "Super-Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/e609.jpg'))


at4033 = Microphone.create(manufacturer: audio_technica, model: "AT4033", kind: "Large-Condenser", phantom: true, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/at4033.jpg'))
at4050 = Microphone.create(manufacturer: audio_technica, model: "AT4050", kind: "Large-Condenser", phantom: true, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/at4050.jpg'))
r121 = Microphone.create(manufacturer: royer, model: "R-121", kind: "Ribbon", phantom: false, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/royer121.jpg'))
sf2 = Microphone.create(manufacturer: royer, model: "SF-2", kind: "Ribbon", phantom: false, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/royer2.jpg'))
i5 = Microphone.create(manufacturer: audix, model: "i5", kind: "Dynamic", phantom: false, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/i5.jpg'))
cmc6 = Microphone.create(manufacturer: schoeps, model: "CMC6-UG", kind: "Small-Condenser", phantom: true, polar_pattern: "Bi-Directional", image: File.new(Rails.root.to_s + '/app/assets/images/mic/CMC6-UG.jpg'))

yeti = Microphone.create(manufacturer: blue, model: "Yeti", kind: "USB", phantom: false, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/yeti.jpg'))
snowball = Microphone.create(manufacturer: blue, model: "Snowball", kind: "USB", phantom: false, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/snowball.jpg'))
at2020 = Microphone.create(manufacturer: audio_technica, model: "AT2020", kind: "USB", phantom: false, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/at2020.jpg'))
nt5 = Microphone.create(manufacturer: rode, model: "NT5", kind: "Small-Condenser", phantom: true, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/nt5.jpg'))
k2 = Microphone.create(manufacturer: rode, model: "K2", kind:"Tube-Condenser", phantom: true, polar_pattern: "Multi-Pattern", image: File.new(Rails.root.to_s + '/app/assets/images/mic/k2.jpg'))
re20 = Microphone.create(manufacturer: ev, model: "RE20", kind: "Dynamic", phantom: false, polar_pattern: "Cardioid", image: File.new(Rails.root.to_s + '/app/assets/images/mic/re20.jpg'))
re635a = Microphone.create(manufacturer: ev, model: "RE635A", kind:"Dynamic", phantom: false, polar_pattern: "Omni-Directional", image: File.new(Rails.root.to_s + '/app/assets/images/mic/re635a.jpg'))


ac_guitar = Instrument.create(name:"Acoustic Guitar", image: File.new(Rails.root.to_s + '/app/assets/images/instrument/ac_guitar.jpg'))
vocals = Instrument.create(name:"Vocals", image: File.new(Rails.root.to_s + '/app/assets/images/instrument/vocals.jpg'))
piano = Instrument.create(name:"Piano", image: File.new(Rails.root.to_s + '/app/assets/images/instrument/piano.jpg'))
e_guitar = Instrument.create(name:"Electric Guitar", image: File.new(Rails.root.to_s + '/app/assets/images/instrument/e_guitar.jpg'))
e_bass = Instrument.create(name:"Electric Bass", image: File.new(Rails.root.to_s + '/app/assets/images/instrument/e_bass.jpg'))
cello = Instrument.create(name:"Cello", image: File.new(Rails.root.to_s + '/app/assets/images/instrument/cello.jpg'))
voiceover = Instrument.create(name:"Voiceover", image: File.new(Rails.root.to_s + '/app/assets/images/instrument/voiceover.jpg'))
drums = Instrument.create(name:"Drums", image: File.new(Rails.root.to_s + '/app/assets/images/instrument/drums.jpg'))

chris = User.create(username: "chris", email: "chris@chan.com", password:"asdfgh")
toby = User.create(username: "toby", email: "toby@zitsman.com", password:"asdfgh")
natalia = User.create(username: "natalia", email: "natalia@hess.com", password:"asdfgh")

first_shootout = Shootout.create(user_id: chris.id, instrument_id: voiceover.id)
second_shootout = Shootout.create(user_id: chris.id, instrument_id: e_guitar.id)
third_shootout = Shootout.create(user_id: chris.id, instrument_id: drums.id)
fourth_shootout = Shootout.create(user_id: chris.id, instrument_id: e_guitar.id)
fifth_shootout = Shootout.create(user_id: toby.id, instrument_id: e_bass.id)
sixth_shootout = Shootout.create(user_id: toby.id, instrument_id: cello.id)
seventh_shootout = Shootout.create(user_id: toby.id, instrument_id: vocals.id)
eighth_shootout = Shootout.create(user_id: natalia.id, instrument_id: piano.id)
ninth_shootout = Shootout.create(user_id: natalia.id, instrument_id: drums.id)
tenth_shootout = Shootout.create(user_id: natalia.id, instrument_id: e_guitar.id)

ShootoutMicrophone.create(shootout_id: first_shootout.id, microphone_id: sm7.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/vox-5-2/SM7B.mp3'))
ShootoutMicrophone.create(shootout_id: first_shootout.id, microphone_id: u87.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/vox-5-2/U87.mp3'))
ShootoutMicrophone.create(shootout_id: second_shootout.id, microphone_id: sm57.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/e-gtr-1-2/SM57.mp3'))
ShootoutMicrophone.create(shootout_id: second_shootout.id, microphone_id: r121.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/e-gtr-1-2/R121.mp3'))

ShootoutMicrophone.create(shootout_id: third_shootout.id, microphone_id: u87.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/drums-1-2/U87.mp3'))
ShootoutMicrophone.create(shootout_id: third_shootout.id, microphone_id: cmc6.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/drums-1-2/CMC6-UG.mp3'))

ShootoutMicrophone.create(shootout_id: fourth_shootout.id, microphone_id: i5.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/e-gtr-2-5/audix_i5.mp3'))
ShootoutMicrophone.create(shootout_id: fourth_shootout.id, microphone_id: md421.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/e-gtr-2-5/MD421.mp3'))
ShootoutMicrophone.create(shootout_id: fourth_shootout.id, microphone_id: r121.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/e-gtr-2-5/royer121.mp3'))
ShootoutMicrophone.create(shootout_id: fourth_shootout.id, microphone_id: e609.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/e-gtr-2-5/e609.mp3'))
ShootoutMicrophone.create(shootout_id: fourth_shootout.id, microphone_id: sm7.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/e-gtr-2-5/SM7.mp3'))

ShootoutMicrophone.create(shootout_id: fifth_shootout.id, microphone_id: c414.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/chewie.mp3'))
ShootoutMicrophone.create(shootout_id: fifth_shootout.id, microphone_id: u87.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/luke.mp3'))

ShootoutMicrophone.create(shootout_id: sixth_shootout.id, microphone_id: sm57.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/akbar.mp3'))
ShootoutMicrophone.create(shootout_id: sixth_shootout.id, microphone_id: sm81.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/han.mp3'))
ShootoutMicrophone.create(shootout_id: sixth_shootout.id, microphone_id: sm7.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/luke.mp3'))
ShootoutMicrophone.create(shootout_id: seventh_shootout.id, microphone_id: c414.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/chewie.mp3'))
ShootoutMicrophone.create(shootout_id: seventh_shootout.id, microphone_id: u87.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/luke.mp3'))

ShootoutMicrophone.create(shootout_id: eighth_shootout.id, microphone_id: sm57.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/akbar.mp3'))
ShootoutMicrophone.create(shootout_id: eighth_shootout.id, microphone_id: sm81.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/han.mp3'))
ShootoutMicrophone.create(shootout_id: eighth_shootout.id, microphone_id: sm7.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/luke.mp3'))
ShootoutMicrophone.create(shootout_id: ninth_shootout.id, microphone_id: c414.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/chewie.mp3'))
ShootoutMicrophone.create(shootout_id: ninth_shootout.id, microphone_id: u87.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/luke.mp3'))
ShootoutMicrophone.create(shootout_id: tenth_shootout.id, microphone_id: sm7.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/luke.mp3'))
ShootoutMicrophone.create(shootout_id: tenth_shootout.id, microphone_id: c414.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/chewie.mp3'))
ShootoutMicrophone.create(shootout_id: tenth_shootout.id, microphone_id: u87.id, audio: File.new(Rails.root.to_s + '/app/assets/audio/luke.mp3'))

