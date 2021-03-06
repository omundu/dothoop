require 'faraday'

module Dothoop

  class Client

    attr_reader :access_token

    def initialize(access_token)
      @access_token = access_token
    end

    def connection
      @faraday ||= Faraday.new connection_options do |req|
        req.adapter :net_http
      end
    end

    def resources
      @resources ||= {}
    end

    def self.resources
      {
        account: AccountResource,
        loop_it: LoopItResource,
        profiles: ProfileResource,
        loops: LoopResource,
        loop_details: LoopDetailResource,
        loop_participants: LoopParticipantResource,
        loop_task_lists: LoopTaskListResource,
        loop_task_list_items: LoopTaskListItemResource,
        contacts: ContactResource,
        loop_templates: LoopTemplateResource
      }
    end

    def method_missing(name, *args, &block)
      if self.class.resources.keys.include?(name)
        resources[name] ||= self.class.resources[name].new(connection: connection)
        resources[name]
      else
        super
      end
    end

    private

    def connection_options
      {
        url: Dothoop.configuration.api_url,
        headers: {
          content_type: 'application/json',
          authorization: "Bearer #{access_token}"
        }
      }
    end
  end
end
