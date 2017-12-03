class SuperuserController < ApplicationController
  # This class will be extended by controllers which have create, update, and
  # destroy functionalities that require an admin authentication.
  before_action :authenticate_admin!, only: [:new, :edit, :create, :update, :destroy]
end
