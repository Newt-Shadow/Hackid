package a2;

import io.flutter.plugin.common.EventChannel;
/* loaded from: classes.dex */
public abstract class a implements EventChannel.StreamHandler {

    /* renamed from: a  reason: collision with root package name */
    private EventChannel.EventSink f60a;

    public final EventChannel.EventSink a() {
        return this.f60a;
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        this.f60a = null;
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink eventSink) {
        this.f60a = eventSink;
    }
}
