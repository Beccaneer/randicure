class RegistrationsController < Devise::RegistrationsController
  def new
    super
		
  end

  def create
    super
		populate
  end

  def update
    super
  end


	def populate
		if current_user
    	@id = current_user.id
			@user = User.find(@id)
			Tech.create(title: 'Horizontal Stripes', mincol: 2, maxcol: 5, minaccents: 1, maxaccents: 3, user_id: @id)
			Tech.create(title: 'Vertical Stripes', mincol: 2, maxcol: 5, minaccents: 1, maxaccents: 3, user_id: @id)
			Tech.create(title: 'French Manicure', mincol: 0, maxcol: 0, minaccents: 0, maxaccents: 0, user_id: @id)
			Tech.create(title: 'Water Marble', mincol: 2, maxcol: 5, minaccents: 0, maxaccents: 0, user_id: @id)
			Tech.create(title: 'Polka Dot', mincol: 2, maxcol: 3, minaccents: 0, maxaccents: 3, user_id: @id)
			Tech.create(title: 'Solid', mincol: 2, maxcol: 5, minaccents: 1, maxaccents: 3, user_id: @id)
			Tech.create(title: 'Coloured Tips', mincol: 1, maxcol: 1, minaccents: 0, maxaccents: 0, user_id: @id)

			Colour.create(colourfam: 'Red', user_id: @id, hexcode: 'FF0000')
			Colour.create(colourfam: 'Blue', user_id: @id, hexcode: '0000FF')
			Colour.create(colourfam: 'Green', user_id: @id, hexcode: '33CC33')
			Colour.create(colourfam: 'Yellow', user_id: @id, hexcode: 'FFFF66')
			Colour.create(colourfam: 'Orange', user_id: @id, hexcode: 'FF6600')
			Colour.create(colourfam: 'Purple', user_id: @id, hexcode: 'CC33FF')
			Colour.create(colourfam: 'White', user_id: @id, hexcode: 'FFFFFF')
			Colour.create(colourfam: 'Black', user_id: @id, hexcode: '000000')

   	else
     #redirect_to new_user_session_path
   	end
	end

end
