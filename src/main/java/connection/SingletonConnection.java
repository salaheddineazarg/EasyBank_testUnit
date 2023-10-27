package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SingletonConnection {
    private static Connection conn;
    static {
        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/easybank_v2", "postgres", "sadinzar29");
            System.out.println("Connected to the database");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Vous pouvez également imprimer un message d'erreur personnalisé ici
        }
    }

    public static Connection getConn() {
        return conn;
    }
}
