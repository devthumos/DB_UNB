# Classe base para CRUD
class CRUDBase:
    def __init__(self, connection):
        self.connection = connection

    def create(self, data):
        raise NotImplementedError("Método create() não implementado")

    def read(self, filters):
        raise NotImplementedError("Método read() não implementado")

    def update(self, data):
        raise NotImplementedError("Método update() não implementado")

    def delete(self, record_id):
        raise NotImplementedError("Método delete() não implementado")