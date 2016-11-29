# Mic Drop

## Technologies

* Ruby on Rails
* Materialize
* JavaScript
* jQuery
* Devise
* Paperclip
* Friendly ID
* Paginate (Stretch: Infinite Scroll)
* Stretch Technologies:
	* MWS for item price
	* Audio Waveform?
	* Google Places

## User Stories

* Upon landing on the site, user can view the most recently added shootouts
* User can browse through the collection of shootouts through the pagination navigation at the bottom of the page
* User can search for a specific mic
	* User can click on a manufacturer to see which of their microphones are listed on our website
* Using the nav bar's dropdown menu (as guest):
	* User can view the 'About' page
	* User can sign up for an account via the "Sign Up" button
	* User can log into their account via the "Log In" button
* Using the nav bar's dropdown menu (as logged in user):
	* User can upload a new shootout
	* User can log out
* User can fill in form (of 'Upload' page) with 2-5 microphones.
* User can select microphone in their shootout via the dropdown field
* User can add audio file with the 'upload file' button
* User can submit new shootout with Submit button


* In a shootout, users can hear examples/comparisons of recordings from different microphones capturing the same source.
	* User can activate a shootout by pressing the "Play" button.
	* A shootout will default to play the top listed microphone.
	* User can choose which microphone they want to hear on the menu list within the shootout.
	* User can pause the audio sameple by clicking the "Pause" button
	* User can resume by pressing the "Play" button
* In the shootout display:
	* Users can see which instrument is being recorded.
	* Users can see who uploaded the shootout
	* Users can see uploader's profile by clicking on uploader's username
* User can view a specific microphone's info page by clicking on the '+' button next to each microphone.


```erb
<div>
	<%= form_for(@shootout, html: {id: "form-for-shootout"}) do |f| %>
		<%= f.hidden_field :user_id, value: current_user.id %>
	<div id="form-sm1" class="row">
	    <div class="input-field col s11 shootout-form-instrument-field">
	      <i class="material-icons prefix">grade</i>
	      <%= f.select :instrument_id, @instruments.collect { |instrum| [ instrum.name, instrum.id, {'data-icon' => instrum.image(:thumb), class: "right circle" }  ] }, { prompt: 'Choose an Instrument' }, { required: true } %>
	    </div>
		<div class="row new-shootout-field" id="new-shootout-1">
		    <%= f.fields_for :shootout_microphones, ShootoutMicrophone.new, html: { multipart: true } do |builder| %>
		      <div class="input-field shootout-input-field col s6">
		        <i class="material-icons prefix">mic</i>
		        <%= builder.select :microphone_id, @microphones.collect { |mic| [ mic.manufacturer.name + " " + mic.model, mic.id, {'data-icon' => mic.image, class: "left circle" } ] }, { prompt: 'Choose a Mic' }, :required => true  %>
		      </div>
		      <div class="input-field shootout-input-field col s5">
		        <i class="material-icons prefix">hearing</i>
		        <%= builder.file_field :audio, {required: true} %>
		      </div>
		    <% end %>
	    <div class="row">
		  	<button class="btn black" id="add-shootout-mic-btn">Add Another Microphone</button>
		    <%= f.submit 'Submit', class: "btn right", id: "submit-shootout-btn" %>
		  </div>
		<% end  %>
		</div>
	</div>
</div>

```

```erb
def create
	newShootout = Shootout.create(shootout_params)
	if newShootout.save
		redirect_to root_path
	else
      flash[:error] = newShootout.errors.full_messages.join(". ")
      redirect_to new_shootout_path
  end
end
```


## Future Additions
* MWS Product Price
* PreAmp Shootout
* Studio and Studio_Microphone (Join) Models