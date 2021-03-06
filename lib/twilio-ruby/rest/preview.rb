##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Preview < Domain
      ##
      # Initialize the Preview Domain
      def initialize(twilio)
        super

        @base_url = 'https://preview.twilio.com'
        @host = 'preview.twilio.com'
        @port = 443

        # Versions
        @sync = nil
        @wireless = nil
        @marketplace = nil
        @bulk_exports = nil
        @proxy = nil
        @hosted_numbers = nil
      end

      ##
      # Version sync of preview
      def sync
        @sync ||= Sync.new self
      end

      ##
      # Version wireless of preview
      def wireless
        @wireless ||= Wireless.new self
      end

      ##
      # Version marketplace of preview
      def marketplace
        @marketplace ||= Marketplace.new self
      end

      ##
      # Version bulk_exports of preview
      def bulk_exports
        @bulk_exports ||= BulkExports.new self
      end

      ##
      # Version proxy of preview
      def proxy
        @proxy ||= Proxy.new self
      end

      ##
      # Version hosted_numbers of preview
      def hosted_numbers
        @hosted_numbers ||= HostedNumbers.new self
      end

      def services(sid=:unset)
        self.proxy.services(sid)
      end

      def commands(sid=:unset)
        self.wireless.commands(sid)
      end

      def rate_plans(sid=:unset)
        self.wireless.rate_plans(sid)
      end

      def sims(sid=:unset)
        self.wireless.sims(sid)
      end

      def available_add_ons(sid=:unset)
        self.marketplace.available_add_ons(sid)
      end

      def installed_add_ons(sid=:unset)
        self.marketplace.installed_add_ons(sid)
      end

      def exports(resource_type=:unset)
        self.bulk_exports.exports(resource_type)
      end

      def export_configuration(resource_type=:unset)
        self.bulk_exports.export_configuration(resource_type)
      end

      def hosted_number_orders(sid=:unset)
        self.hosted_numbers.hosted_number_orders(sid)
      end

      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio::REST::Preview>'
      end
    end
  end
end