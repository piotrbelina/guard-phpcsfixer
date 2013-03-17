require "guard"
require "guard/guard"

module Guard
  class Phpcsfixer < Guard
    # Called on file(s) modifications that the Guard watches.
    # @param [Array<String>] paths the changes files or paths
    # @raise [:task_has_failed] when run_on_change has failed
    def run_on_changes(paths)
      paths.each do |path|
        result = `php-cs-fixer fix #{path}`
        puts result
      end
    end

  end
end
