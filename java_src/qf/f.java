package qf;

import io.flutter.plugin.common.EventChannel;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.m;
import xc.k;
import yc.h0;
/* loaded from: classes2.dex */
public final class f implements EventChannel.StreamHandler {

    /* renamed from: a  reason: collision with root package name */
    private final EventChannel f28791a;

    /* renamed from: b  reason: collision with root package name */
    private EventChannel.EventSink f28792b;

    public f(EventChannel eventChannel) {
        m.e(eventChannel, "eventChannel");
        this.f28791a = eventChannel;
        eventChannel.setStreamHandler(this);
    }

    public static /* synthetic */ void d(f fVar, String str, Map map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = new HashMap();
        }
        fVar.c(str, map);
    }

    public final void a() {
        EventChannel.EventSink eventSink = this.f28792b;
        if (eventSink != null) {
            eventSink.endOfStream();
            onCancel(null);
        }
        this.f28791a.setStreamHandler(null);
    }

    public final void b(String str, String str2, Object obj) {
        EventChannel.EventSink eventSink = this.f28792b;
        if (eventSink != null) {
            eventSink.error(str, str2, obj);
        }
    }

    public final void c(String method, Map arguments) {
        Map l10;
        m.e(method, "method");
        m.e(arguments, "arguments");
        EventChannel.EventSink eventSink = this.f28792b;
        if (eventSink != null) {
            l10 = h0.l(arguments, new k("event", method));
            eventSink.success(l10);
        }
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        this.f28792b = null;
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink eventSink) {
        this.f28792b = eventSink;
    }
}
