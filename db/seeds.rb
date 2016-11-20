# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
shure = Manufacturer.create(name: "Shure", website: "http://www.shure.com/americas/products/microphones")
akg = Manufacturer.create(name: "AKG", website: "http://www.akg.com/pro/microphones/recording")
neumann = Manufacturer.create(name: "Neumann", website: "http://www.neumann.com/?id=current_microphones&lang=en")
sennheiser = Manufacturer.create(name: "Sennheiser", website: "https://en-us.sennheiser.com/microphones")
audio_technica = Manufacturer.create(name: "Audio Technica", website: "http://www.audio-technica.com/cms/site/c39d4794571cd2a1/")
royer = Manufacturer.create(name: "Royer", website: "http://www.royerlabs.com/products.html")

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

guitar = Instrument.create(name:"guitar", image: "http://hd.wallpaperswide.com/thumbs/acoustic_guitar-t2.jpg")
vocals = Instrument.create(name:"vocals")


first_shootout = Shootout.create(instrument_id: guitar.id)
second_shootout = Shootout.create(instrument_id: vocals.id)

ShootoutMicrophone.create(shootout_id: first_shootout.id, microphone_id: sm57.id)
ShootoutMicrophone.create(shootout_id: first_shootout.id, microphone_id: sm81.id)
ShootoutMicrophone.create(shootout_id: second_shootout.id, microphone_id: sm7.id)
ShootoutMicrophone.create(shootout_id: second_shootout.id, microphone_id: c414.id)
ShootoutMicrophone.create(shootout_id: second_shootout.id, microphone_id: u87.id)
