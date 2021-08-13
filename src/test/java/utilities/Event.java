package utilities;

public class Event {

    public String TimeStamp;
    public String MessagPriority;
    public String Message;

    public Event(String timeStamp, String messagPriority, String message) {
        TimeStamp = timeStamp;
        MessagPriority = messagPriority;
        Message = message;
    }

    public String getTimeStamp() {
        return TimeStamp;
    }

    public void setTimeStamp(String timeStamp) {
        TimeStamp = timeStamp;
    }

    public String getMessagPriority() {
        return MessagPriority;
    }

    public void setMessagPriority(String messagPriority) {
        MessagPriority = messagPriority;
    }

    public String getMessage() {
        return Message;
    }

    public void setMessage(String message) {
        Message = message;
    }
}
