package io.flutter.plugins.sharedpreferences;

import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class MessagesAsyncPigeonCodec extends StandardMessageCodec {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.flutter.plugin.common.StandardMessageCodec
    public Object readValueOfType(byte b10, ByteBuffer buffer) {
        List<? extends Object> list;
        List<? extends Object> list2;
        kotlin.jvm.internal.m.e(buffer, "buffer");
        if (b10 == -127) {
            Long l10 = (Long) readValue(buffer);
            if (l10 == null) {
                return null;
            }
            return StringListLookupResultType.Companion.ofRaw((int) l10.longValue());
        } else if (b10 == -126) {
            Object readValue = readValue(buffer);
            if (readValue instanceof List) {
                list2 = (List) readValue;
            } else {
                list2 = null;
            }
            if (list2 == null) {
                return null;
            }
            return SharedPreferencesPigeonOptions.Companion.fromList(list2);
        } else if (b10 == -125) {
            Object readValue2 = readValue(buffer);
            if (readValue2 instanceof List) {
                list = (List) readValue2;
            } else {
                list = null;
            }
            if (list == null) {
                return null;
            }
            return StringListResult.Companion.fromList(list);
        } else {
            return super.readValueOfType(b10, buffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.flutter.plugin.common.StandardMessageCodec
    public void writeValue(ByteArrayOutputStream stream, Object obj) {
        kotlin.jvm.internal.m.e(stream, "stream");
        if (obj instanceof StringListLookupResultType) {
            stream.write(129);
            writeValue(stream, Integer.valueOf(((StringListLookupResultType) obj).getRaw()));
        } else if (obj instanceof SharedPreferencesPigeonOptions) {
            stream.write(130);
            writeValue(stream, ((SharedPreferencesPigeonOptions) obj).toList());
        } else if (obj instanceof StringListResult) {
            stream.write(131);
            writeValue(stream, ((StringListResult) obj).toList());
        } else {
            super.writeValue(stream, obj);
        }
    }
}
