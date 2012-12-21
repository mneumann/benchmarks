LANG=%w(cc d rust ruby go)
BENCH=%w(dvec1 dvec2 slist1)
PARMS = {'dvec1' => ["100000 10000", "1000000 1000", "10000000 1000"],
         'dvec2' => ["100000 10000", "1000000 1000", "10000000 100"],
         'slist1' => ["100000 1000", "1000000 1000"] }

LOG=ARGV[0] || "log"

def clean_all
  LANG.each {|l| puts `make -C #{l} clean`}
end

def compile_all
  LANG.each {|l| puts `make -C #{l} #{BENCH.join(' ')}`}
end

def run_all
  BENCH.each {|bench|
    PARMS[bench].each {|parm|
      LANG.each {|lang|
	cmd = "#{lang}/#{bench} #{parm}"
	`echo #{cmd} >> #{LOG}`
	p `time -p -a -o #{LOG} #{cmd}`
	`echo ---------------------------------------- >> #{LOG}`
      }
      `echo ---------------------------------------- >> #{LOG}`
    }
  }
end

clean_all
compile_all
run_all
