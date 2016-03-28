import java.io.IOException;
import java.io.PrintStream;
import java.security.NoSuchAlgorithmException;

public class HashCoder
{
  public static void main(String[] paramArrayOfString)
    throws IOException, NoSuchAlgorithmException
  {
    if (paramArrayOfString.length != 1)
    {
      System.out.println("Usage: java HashCode <tid>");
      System.exit(1);
    }
    byte[] arrayOfByte = paramArrayOfString[0].getBytes();
    int i = 0;
    for (int j = 0; j < arrayOfByte.length; j++) {
      i += (0xFE ^ arrayOfByte[j]) % 10000;
    }
    String str = "METRO-JAVA-" + String.format("%04d", new Object[] { Integer.valueOf(i) });
    System.out.println(str);
  }
}
