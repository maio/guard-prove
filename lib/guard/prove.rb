require 'systemu'
require 'guard'
require 'guard/guard'

module Guard
  class Prove < Guard

    def run_on_change(paths)
      paths.uniq!
      paths.each { |path| run_prove(path) }
    end

    def run_prove(path)
      command = "prove -r #{path}"
      puts command
      status, stdout, stderr = systemu command

      if status.success?
          ::Guard::Notifier.notify(stderr, :title => "PASS",
                                           :image => :success)
      else
          ::Guard::Notifier.notify(stderr, :title => "FAIL",
                                           :image => :failed)
      end

      puts stdout
      puts
      puts stderr
      puts
      puts
    end
  end
end

