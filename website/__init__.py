from flask import Flask
from .extensions import db  # Import db from your extensions module
from .config import SQLALCHEMY_DATABASE_URI, \
    SQLALCHEMY_TRACK_MODIFICATIONS  # Assuming these are defined in your config.py


def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = 'pkpjauperdaug'
    # Load the SQLAlchemy configuration from config.py
    app.config['SQLALCHEMY_DATABASE_URI'] = SQLALCHEMY_DATABASE_URI
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = SQLALCHEMY_TRACK_MODIFICATIONS

    db.init_app(app)  # Initialize db with the app

    with app.app_context():
        # Import models to ensure they are registered with SQLAlchemy
        from . import models

    from .views import views
    from .auth import auth

    app.register_blueprint(views, url_prefix='/')
    app.register_blueprint(auth, url_prefix='/')

    return app
