class Api::V1::BuildsController < ApiController
  before_action :check_api_token, except: [:state]

  # PATCH /api/v1/build/:id/finish
  def finish
    build = Build.find(params[:id])

    if params[:url].present?
      if build.update_attribute(:state, Build.states[:succeeded])
        if build.update_attribute(:url, params[:url])
          BuildMailer.build_done_success_mail(build).deliver
          head :ok
        else
          head :unprocessable_entity
        end
      else
        head :unprocessable_entity
      end
    else
      head :unprocessable_entity
    end
  end

  # PATCH /api/v1/build/:id/fail
  def fail
    build = Build.find(params[:id])

    if build.update_attribute(:state, Build.states[:failed])
      BuildMailer.build_done_fail_mail(build).deliver
      head :ok
    else
      head :unprocessable_entity
    end
  end

  # PATCH /api/v1/build/:id/start
  def start
    build = Build.find(params[:id])

    if build.update_attribute(:state, Build.states[:started])
      BuildMailer.build_started_mail(build).deliver
      head :ok
    else
      head :unprocessable_entity
    end
  end

  # GET /api/v1/build/:id/state
  def state
    build = Build.find(params[:id])

    render json: { state: build.state }
  end
end
