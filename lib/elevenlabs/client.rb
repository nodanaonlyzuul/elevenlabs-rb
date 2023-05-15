# frozen_string_literal: true

require_relative "rb/version"
require 'http'

module Elevenlabs
  class Client
    
    ELEVENLABS_FQDN = 'https://api.elevenlabs.io'
    DEFAULT_STABILITY = 0.5
    DEFAULT_MODEL = 'eleven_monolingual_v1'
    attr_accessor :api_key

    class Error < StandardError; end

    def initialize(api_key:)
      @api_key = api_key
    end

    def text_to_speech(voice_id:, optimize_streaming_latency: 0, text:, stability: DEFAULT_STABILITY, model: DEFAULT_MODEL, stream: false)
      
      body = {
        text: text,
        model_id: model,
        voice_settings: {
          stability: stability,
          similarity_boost: 0
        }
      }
      url_path = stream ? "#{ELEVENLABS_FQDN}/v1/text-to-speech/#{voice_id}/stream" : "#{ELEVENLABS_FQDN}/v1/text-to-speech/#{voice_id}"
      authorized_http_client.post(url_path, :params => {optimize_streaming_latency: optimize_streaming_latency}, json: body).to_s
    end

    def text_to_speech_stream(voice_id:, optimize_streaming_latency: 0, text:, stability: DEFAULT_STABILITY, model: DEFAULT_MODEL)
      text_to_speech(stream: true, voice_id: voice_id, optimize_streaming_latency: optimize_streaming_latency, text: text, stability: stability, model: model)
    end

    def list_voices
      JSON.parse(authorized_http_client.get("#{ELEVENLABS_FQDN}/v1/voices").to_s)
    end

    private

    def authorized_http_client
      HTTP.headers('xi-api-key': @api_key)
    end
  end
end