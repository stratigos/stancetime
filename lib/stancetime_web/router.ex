defmodule StancetimeWeb.Router do
  use StancetimeWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", StancetimeWeb do
    pipe_through :browser

    # Serve an SPA
    get "/", PageController, :index
  end

  scope "/admin", StancetimeWeb.Admin, as: :admin do
    pipe_through :browser

    resources "/stances", StanceController
  end

  scope "/api", StancetimeWeb.Api, as: :api do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      resources "/stances", StanceController, only: [:index, :show]
    end

  end
W
end
