#    OpenProject Help Link - Allows to modify the help link target
#    Copyright (C) 2013  Finn GmbH
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

module OpenProject::HelpLink
  module Patches
    module InfoPatch
      def self.included(base)
        base.send(:extend, ClassMethods)

        base.class_eval do
          unloadable

          class << self
            alias_method_chain :help_url, :settings
          end
        end
      end

      module ClassMethods
        def help_url_with_settings
          Setting.plugin_openproject_help_link["help_link_target"]
        end
      end
    end
  end
end

OpenProject::Info.send(:include, OpenProject::HelpLink::Patches::InfoPatch)