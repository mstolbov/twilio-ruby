##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Monitor < Domain
      ##
      # Initialize the Monitor Domain
      def initialize(twilio)
        super

        @base_url = 'https://monitor.twilio.com'
        @host = 'monitor.twilio.com'
        @port = 443

        # Versions
        @v1 = nil
      end

      ##
      # Version v1 of monitor
      def v1
        @v1 ||= V1.new self
      end

      def alerts(sid=:unset)
        self.v1.alerts(sid)
      end

      def events(sid=:unset)
        self.v1.events(sid)
      end

      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio::REST::Monitor>'
      end
    end
  end
end