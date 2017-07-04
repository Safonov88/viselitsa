class WordReader
    def read_from_file(file_name)
      if File.exist?(file_name)
        begin
          f = File.new(file_name, "r:UTF-8")
          lines = f.readlines
          f.close
          lines.sample.chomp
        rescue Errno::ENOENT
          ""
        end
      else
        ""
      end
    end
end
