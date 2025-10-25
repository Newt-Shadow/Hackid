package org.apache.tika.fork;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
/* loaded from: classes2.dex */
class ForkObjectInputStream extends ObjectInputStream {
    private final ClassLoader loader;

    public ForkObjectInputStream(InputStream inputStream, ClassLoader classLoader) {
        super(inputStream);
        this.loader = classLoader;
    }

    public static Object readObject(DataInputStream dataInputStream, ClassLoader classLoader) {
        byte[] bArr = new byte[dataInputStream.readInt()];
        dataInputStream.readFully(bArr);
        return new ForkObjectInputStream(new ByteArrayInputStream(bArr), classLoader).readObject();
    }

    public static void sendObject(Object obj, DataOutputStream dataOutputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        try {
            objectOutputStream.writeObject(obj);
            objectOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            dataOutputStream.writeInt(byteArray.length);
            dataOutputStream.write(byteArray);
        } catch (Throwable th) {
            try {
                objectOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.io.ObjectInputStream
    protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) {
        return Class.forName(objectStreamClass.getName(), false, this.loader);
    }
}
