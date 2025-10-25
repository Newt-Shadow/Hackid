package io.flutter.plugins.firebase.analytics;

import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class GeneratedAndroidFirebaseAnalyticsPigeonCodec extends StandardMessageCodec {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.flutter.plugin.common.StandardMessageCodec
    public Object readValueOfType(byte b10, ByteBuffer buffer) {
        List<? extends Object> list;
        kotlin.jvm.internal.m.e(buffer, "buffer");
        if (b10 == -127) {
            Object readValue = readValue(buffer);
            if (readValue instanceof List) {
                list = (List) readValue;
            } else {
                list = null;
            }
            if (list == null) {
                return null;
            }
            return AnalyticsEvent.Companion.fromList(list);
        }
        return super.readValueOfType(b10, buffer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.flutter.plugin.common.StandardMessageCodec
    public void writeValue(ByteArrayOutputStream stream, Object obj) {
        kotlin.jvm.internal.m.e(stream, "stream");
        if (obj instanceof AnalyticsEvent) {
            stream.write(129);
            writeValue(stream, ((AnalyticsEvent) obj).toList());
            return;
        }
        super.writeValue(stream, obj);
    }
}
