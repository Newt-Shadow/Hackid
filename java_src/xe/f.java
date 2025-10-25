package xe;

import java.util.logging.Handler;
import java.util.logging.LogRecord;
/* loaded from: classes2.dex */
public final class f extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public static final f f32786a = new f();

    private f() {
    }

    @Override // java.util.logging.Handler
    public void close() {
    }

    @Override // java.util.logging.Handler
    public void flush() {
    }

    @Override // java.util.logging.Handler
    public void publish(LogRecord record) {
        int b10;
        kotlin.jvm.internal.m.e(record, "record");
        e eVar = e.f32783a;
        String loggerName = record.getLoggerName();
        kotlin.jvm.internal.m.d(loggerName, "record.loggerName");
        b10 = g.b(record);
        String message = record.getMessage();
        kotlin.jvm.internal.m.d(message, "record.message");
        eVar.a(loggerName, b10, message, record.getThrown());
    }
}
