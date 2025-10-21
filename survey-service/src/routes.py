from src import api

from src.resources.smoke import Smoke

api.add_resource(Smoke, "/smoke", strict_slashes=False)
