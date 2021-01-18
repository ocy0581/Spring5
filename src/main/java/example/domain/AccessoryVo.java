package example.domain;


public class AccessoryVo {
    private int id;
    private String category;
    private String accessoryId;
    private String color;
    private String gold;
    private int price;
    private int count;

    public AccessoryVo(int id, String accessoryId, int price) {
        this.id = id;
        this.accessoryId = accessoryId;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public String toStringAll() {
        return "AccessoryVo{" +
                "id=" + id +
                ", category='" + category + '\'' +
                ", accessoryId='" + accessoryId + '\'' +
                ", color='" + color + '\'' +
                ", gold='" + gold + '\'' +
                ", price=" + price +
                ", count=" + count +
                '}';
    }

    @Override
    public String toString() {
        return "AccessoryVo{" +
                "id=" + id +
                ", accessoryId='" + accessoryId + '\'' +
                ", price=" + price +
                '}';
    }

    public String getCategory() {
        return category;
    }

    public String getAccessoryId() {
        return accessoryId;
    }

    public String getColor() {
        return color;
    }

    public String getGold() {
        return gold;
    }

    public int getPrice() {
        return price;
    }

    public int getCount() {
        return count;
    }

    public AccessoryVo(int id, String category, String accessoryId, String color, String gold, int price, int count) {
        this.id = id;
        this.category = category;
        this.accessoryId = accessoryId;
        this.color = color;
        this.gold = gold;
        this.price = price;
        this.count = count;
    }
}
