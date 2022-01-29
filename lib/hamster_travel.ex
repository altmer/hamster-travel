defmodule HamsterTravel do
  @moduledoc """
  HamsterTravel keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def plans() do
    [
      %{
        name: "Рождественский Стокгольм",
        slug: "rozhdestvenskiy-stokgolm",
        duration: 4,
        start_date: ~D[2021-12-17],
        status: "planned",
        countries: ["se"],
        people_count: 3,
        cover:
          "https://d2fetf4i8a4kn6.cloudfront.net/2021/09/19/12/38/10/41fe55b1-aa9d-4798-9854-f57ce928ded0/photo.png",
        budget: Decimal.new("1124.59"),
        currency_symbol: "€",
        author: %{
          name: "Yulia Marchenko",
          avatar_url: "https://d2fetf4i8a4kn6.cloudfront.net/2014/09/30/11/27/53/320/foto.png"
        }
      },
      %{
        name: "Будапешт и Тапольца",
        slug: "budapesht-i-tapoltsa",
        duration: 8,
        start_date: ~D[2021-09-07],
        status: "finished",
        countries: ["hu"],
        people_count: 3,
        cover:
          "https://d2fetf4i8a4kn6.cloudfront.net/2017/02/10/17/38/23/f15ba329-31e3-4497-9caa-2ee2d7caf3e7/photo.png",
        budget: Decimal.new("1431.28"),
        currency_symbol: "€",
        author: %{
          name: "Yulia Marchenko",
          avatar_url: "https://d2fetf4i8a4kn6.cloudfront.net/2014/09/30/11/27/53/320/foto.png"
        }
      },
      %{
        name: "Мальорка",
        slug: "maljorka",
        duration: 9,
        start_date: ~D[2021-07-13],
        status: "finished",
        countries: ["es"],
        people_count: 3,
        cover:
          "https://d2fetf4i8a4kn6.cloudfront.net/2021/06/08/11/27/25/98e26f12-b57a-4c8a-a380-5ca65109d214/photo.png",
        budget: Decimal.new("2939.65"),
        currency_symbol: "€",
        author: %{
          name: "Yulia Marchenko",
          avatar_url: "https://d2fetf4i8a4kn6.cloudfront.net/2014/09/30/11/27/53/320/foto.png"
        }
      },
      %{
        name: "Копенгаген и немного Швеции",
        slug: "kopengagen-i-nemnogo-shvetsii",
        duration: 4,
        start_date: ~D[2019-05-16],
        status: "finished",
        countries: ["dk", "se", "fi", "fo"],
        people_count: 3,
        cover:
          "https://d2fetf4i8a4kn6.cloudfront.net/2018/09/24/14/55/35/5016a1b2-2500-418f-8db1-97a8a229f4a2/photo.png",
        budget: Decimal.new("1171.76"),
        currency_symbol: "€",
        author: %{
          name: "Yulia Marchenko",
          avatar_url: "https://d2fetf4i8a4kn6.cloudfront.net/2014/09/30/11/27/53/320/foto.png"
        }
      }
    ]
  end

  def drafts() do
    [
      %{
        name: "Бамберг - пивной город Франконии ",
        slug: "bamberg-pivnoy-gorod",
        duration: 3,
        start_date: nil,
        status: "draft",
        countries: ["de"],
        people_count: 2,
        cover:
          "https://d2fetf4i8a4kn6.cloudfront.net/2015/11/09/16/57/40/845/Bamberg_c_Bamberg_Tourismus_und_Congress_Service.jpg",
        budget: Decimal.new("614.18"),
        currency_symbol: "€",
        author: %{
          name: "Yulia Marchenko",
          avatar_url: "https://d2fetf4i8a4kn6.cloudfront.net/2014/09/30/11/27/53/320/foto.png"
        }
      },
      %{
        name: "Гельголанд: в гости к тюленюшкам! ",
        slug: "gelgoland-v-gosti-k-tyul",
        duration: 2,
        start_date: nil,
        status: "draft",
        countries: ["de"],
        people_count: 1,
        cover:
          "https://d2fetf4i8a4kn6.cloudfront.net/2017/09/25/14/46/56/fa63eb59-8ab3-4648-a60f-27167708208b/photo.png",
        budget: Decimal.new("90"),
        currency_symbol: "€",
        author: %{
          name: "Yulia Marchenko",
          avatar_url: "https://d2fetf4i8a4kn6.cloudfront.net/2014/09/30/11/27/53/320/foto.png"
        }
      }
    ]
  end

  def find_plan_by_slug(slug) do
    plan =
      Enum.find(plans() ++ drafts(), fn plan ->
        plan.slug == slug
      end)

    if plan != nil do
      {:ok, plan}
    else
      {:error, :not_found}
    end
  end
end
