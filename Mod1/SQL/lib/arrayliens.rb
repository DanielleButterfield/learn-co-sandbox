class Arraylien
    attr_accessor :name, :age, :gender_identity, :id

    @@all = []

    def initialize (name, age, gender_identity, id=nil)
        @id = id
        @name = name
        @age = age
        @gender_identity = gender_identity

        @@all << self
    end

    def self.all
        sql = <<-SQL
            SELECT * FROM arrayliens
        SQL
        DB[:conn].execute(sql)
    end

    def self.create_table
        sql = <<-SQL
            CREATE TABLE IF NOT EXISTS arrayliens (
                id INTEGER PRIMARY KEY,
                name TEXT,
                age INTEGER,
                gender_identity TEXT
            )
        SQL
        DB[:conn].execute(sql)
    end

    def save
        sql = <<-SQL
            INSERT INTO arrayliens (name, age, gender_identity)
            VALUES(?, ?, ?)
        SQL
        DB[:conn].execute(sql, self.name, self.age, self.gender_identity)
        @id = DB[:conn].execute("SELECT last_insert_rowid() FROM arrayliens")[0][0]
    end
end