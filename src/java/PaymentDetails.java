import java.sql.Timestamp;

public class PaymentDetails {
    private int paymentID;
    private double Amount;
    private Timestamp paymentDate;
    private String Name;
    private String Email;

    public PaymentDetails(int paymentID, double Amount, Timestamp paymentDate, String Name, String Email) {
        this.paymentID = paymentID;
        this.Amount = Amount;
        this.paymentDate = paymentDate;
        this.Name = Name;
        this.Email = Email;
    }

    // Getters
    public int getPaymentId() { return paymentID; }
    public double getAmount() { return Amount; }
    public Timestamp getPaymentDate() { return paymentDate; }
    public String getName() { return Name; }
    public String getEmail() { return Email; }


}

