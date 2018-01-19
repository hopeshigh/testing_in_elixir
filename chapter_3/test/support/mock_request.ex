defmodule Chapter3.Github.MockRequest do
  @behaviour Chapter3.Github

  def request do
    {:ok,
     %HTTPoison.Response{
       status_code: 200,
       body: "{\"items\":[{\"html_url\":\"https://myfakeurl.test\",\"commit\":{\"author\":{\"date\":\"2018-01-19T15:01:01.000+05:30\",\"name\":\"Fake Dave\",\"email\":\"dave@fakeemail.test\"}}}]}"
     }
    }
  end
end
