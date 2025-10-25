package v3;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final ByteArrayOutputStream f31203a;

    /* renamed from: b  reason: collision with root package name */
    private final DataOutputStream f31204b;

    public c() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f31203a = byteArrayOutputStream;
        this.f31204b = new DataOutputStream(byteArrayOutputStream);
    }

    private static void b(DataOutputStream dataOutputStream, String str) {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public byte[] a(a aVar) {
        this.f31203a.reset();
        try {
            b(this.f31204b, aVar.f31197a);
            String str = aVar.f31198b;
            if (str == null) {
                str = "";
            }
            b(this.f31204b, str);
            this.f31204b.writeLong(aVar.f31199c);
            this.f31204b.writeLong(aVar.f31200d);
            this.f31204b.write(aVar.f31201e);
            this.f31204b.flush();
            return this.f31203a.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
