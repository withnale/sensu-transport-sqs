gem "aws-sdk"

require "aws-sdk"

require File.join(File.dirname(__FILE__), "base")

module Sensu
  module Transport
    class SQS < Base
      def initialize
        super
        @queues = {}
      end

      def connect options = {}
      end

      def reconnect
      end

      def connected?
      end

      def close
      end

      def publish exchange_type, exchange_name, message, options = {}, &callback
      end

      def subscribe exchange_type, exchange_name, queue_name = "", options = {}, &callback
      end

      def unsubscribe &callback
      end

      def acknowledge info, &callback
      end

      def stats queue_name, options = {}, &callback
      end

      private

      def sqs
        AWS::SQS.new aws_config
      end

      def aws_config

      end
    end
  end
end
