#
#  Copyright (c) 2008 INdT - Instituto Nokia de Tecnologia
#
#  This file is part of python-purple.
#
#  python-purple is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  python-purple is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

cimport purple

cdef class Protocol:
    """
    Protocol class
    @param protocol_id
    """

    def __init__(self, account, protocol_id):
        self.__account = account
        self.__protocol_id = protocol_id

    def __get_protocol_id(self):
        return self.__protocol_id.protocol_id
    protocol_id = property(__get_protocol_id)

    def __get_account(self):
        return self.__account
    account = property(__get_account)

    def _set_protocol_id(self, protocol_id):
        account.purple_account_set_protocol_id( \
                self.__account._get_structure(), protocol_id)