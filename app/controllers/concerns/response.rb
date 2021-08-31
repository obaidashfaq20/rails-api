module Response
  def json_response message, is_success, data, status
    render json: {
      messages: message,
      is_success: is_success,
      data: data
    }, status: status
  end
end
