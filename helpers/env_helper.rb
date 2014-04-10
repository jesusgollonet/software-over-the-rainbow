# sensible settings are stored in a .gitignored file called local_env.yml
# and read as ENV variables below
# http://railsapps.github.io/rails-environment-variables.html

module EnvHelper
  def EnvHelper.test
    puts 'works!'
    puts File.exists? File.join(File.dirname(__FILE__) , '..', 'local_env.yml')
  end

  def EnvHelper.get_local_env_path
    env_file = File.join(File.dirname(__FILE__) , '..', 'local_env.yml')
    env_file
  end

  def EnvHelper.set_env_vars 
    YAML.load(File.open(get_local_env_path)).each do |key, value|
      ENV[key.to_s] = value
    end if File.exists?(get_local_env_path)
  end
end
