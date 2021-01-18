package example.domain;

public class UserVo {
    private int id;
    private String password;
    private String email;
    private String phone;
    private String created;
    private String updated;

    @Override
    public String toString() {
        return "UserVo{" +
                "id=" + id +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", created='" + created + '\'' +
                ", updated='" + updated + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getCreated() {
        return created;
    }

    public String getUpdated() {
        return updated;
    }

    public UserVo(int id, String password, String email, String phone, String created, String updated) {
        this.id = id;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.created = created;
        this.updated = updated;
    }
}
