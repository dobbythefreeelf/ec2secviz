#collect information about individial nodes
module Secviz
  class Cache
    require 'yaml'
    require 'ostruct'

    def load_nodes
      YAML::load(File.open(
        File.join(File.dirname(__FILE__), '..', '..', 'cache', 'node_cache.yml'))
      )
    end

    def load_groups
      YAML::load(File.open(
        File.join(File.dirname(__FILE__), '..', '..', 'cache', 'group_cache.yml'))
      )
    end

#TODO allow groups to be searchable
    def search_groups
      nodes = self.load_groups
    end

    def search_nodes(params)
      matches
      nodes = self.load_nodes
    end

  end
end