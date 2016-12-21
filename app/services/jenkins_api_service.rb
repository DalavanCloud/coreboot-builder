require 'jenkins_api_client'

class JenkinsAPIService
  class << self
    def start_job!(build_hash)
      client = JenkinsApi::Client.new(
        server_url: ENV['JENKINS_SERVER_URL'],
        username: ENV['JENKINS_USERNAME'],
        password: ENV['JEKNINS_PASSWORD'],
      )

      job = JenkinsApi::Client::Job.new(client)

      job.build(ENV['JENKINS_BUILD_JOB_NAME'], build_hash)
    end
  end
end
