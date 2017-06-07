module Serverspec
  class Runner

    def self.method_missing(meth, *args)
      run(meth, *args)
    end

    private
    def self.run(meth, *args)
      exec = Specinfra::Backend::Exec.new(shell: '/bin/sh')
      cmd = exec.command.get(meth, *args)
      ret = exec.run_command(cmd)
      if meth.to_s.slice(0, 5) == 'check'
        ret.success?
      else
        ret
      end
    end
  end
end
