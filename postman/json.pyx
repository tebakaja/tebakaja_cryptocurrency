from libc.stdlib cimport malloc, free
from cpython.pycapsule cimport PyCapsule_Import
from cpython.object cimport PyObject
from cpython.dict cimport PyDict_GetItemString


cdef class JSONProcessor:
    cdef str input_file
    cdef str output_file
    cdef object data

    def __init__(self, str input_file, str output_file):
        self.input_file = input_file
        self.output_file = output_file
        self.data = None

    cpdef void load_json(self):
        import json
        with open(self.input_file, 'r') as file:
            self.data = json.load(file)

    cpdef list extract_symbols(self):
        if self.data is None:
            raise ValueError("data not loaded. call load_json() first.")
        quotes = self.data['finance']['result'][0]['quotes']
        return [quote['symbol'] for quote in quotes]

    cpdef void save_json(self, list data):
        import json
        with open(self.output_file, 'w') as file:
            json.dump({'symbols': data}, file, indent=4)
            print(f'saved: {self.output_file}')


""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
""" --- """
