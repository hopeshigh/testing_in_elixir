defmodule Chapter3.Github.MockRequest do
  @behaviour Chapter3.Github

  def call(:valid_url) do
    {:ok,
     %HTTPoison.Response{
       status_code: 200,
       body: "{\"items\":[{\"html_url\":\"https://myfakeurl.test\",\"commit\":{\"author\":{\"date\":\"2018-01-19T15:01:01.000+05:30\",\"name\":\"Fake Dave\",\"email\":\"dave@fakeemail.test\"}}}]}"
     }
    }
  end


  def call(:invalid_url) do
    {:ok, %HTTPoison.Response{status_code: 404}}
  end


  def call(:error) do
    {:error, %HTTPoison.Error{reason: "Something went wrong"}}
  end
end
