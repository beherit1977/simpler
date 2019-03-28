class TestsController < Simpler::Controller

  def index
    @time = Time.now

    status 200
    headers['Some-Header'] = 'Some-Text'
    render plain: "Time is now #{@time}"
  end

  def create

  end

  def show
    set_header('Content-Type', 'text/plain')
    render plain: "Showing test #{params[:id]}. Now is #{Time.now}"
  end
  
end
