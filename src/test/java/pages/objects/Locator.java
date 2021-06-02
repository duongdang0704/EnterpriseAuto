package pages.objects;

public class Locator {
    public enum By{
        AccessibilityId {
            public String toString() {
                return "accessibility id";
            }
        },
        Name {
            public String toString() {
                return "name";
            }
        },
        Id {
            public String toString() {
                return "id";
            }
        },
        TagName {
            public String toString() {
                return "tag name";
            }
        },
        Xpath {
            public String toString() {
                return "xpath";
            }
        },
        ClassName {
            public String toString() {
                return "class name";
            }
        }
    }

    private String using;
    private By by;

    public String getUsing() {
        return using;
    }

    public void setUsing(String using) {
        this.using = using;
    }

    public By getBy() {
        return by;
    }

    public void setBy(By by) {
        this.by = by;
    }

    public Locator(By by, String using) {
        this.by = by;
        this.using = using;
    }
}
