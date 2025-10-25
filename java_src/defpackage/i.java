package defpackage;

import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.List;
import kotlin.jvm.internal.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: i  reason: default package */
/* loaded from: classes.dex */
public final class i extends StandardMessageCodec {

    /* renamed from: a  reason: collision with root package name */
    public static final i f17063a = new i();

    private i() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.flutter.plugin.common.StandardMessageCodec
    public Object readValueOfType(byte b10, ByteBuffer buffer) {
        List list;
        List list2;
        m.e(buffer, "buffer");
        if (b10 == Byte.MIN_VALUE) {
            Object readValue = readValue(buffer);
            if (readValue instanceof List) {
                list2 = (List) readValue;
            } else {
                list2 = null;
            }
            if (list2 == null) {
                return null;
            }
            return c.f4782b.a(list2);
        } else if (b10 == -127) {
            Object readValue2 = readValue(buffer);
            if (readValue2 instanceof List) {
                list = (List) readValue2;
            } else {
                list = null;
            }
            if (list == null) {
                return null;
            }
            return d.f14270b.a(list);
        } else {
            return super.readValueOfType(b10, buffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.flutter.plugin.common.StandardMessageCodec
    public void writeValue(ByteArrayOutputStream stream, Object obj) {
        m.e(stream, "stream");
        if (obj instanceof c) {
            stream.write(128);
            writeValue(stream, ((c) obj).a());
        } else if (obj instanceof d) {
            stream.write(129);
            writeValue(stream, ((d) obj).b());
        } else {
            super.writeValue(stream, obj);
        }
    }
}
