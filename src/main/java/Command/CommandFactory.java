package Command;


// khởi tạo các đối tượng command
public class CommandFactory {
    public InterfaceCommand createCommand(String action) {
        switch(action) {
            case "add":
                return new AddToCartCommand();
            case "remove":
                return new RemoveFromCartCommand();
            case "change":
                return new ChangeCartQuantityCommand();
            default:
                return null;
        }
    }
}

