package me;

import android.content.Context;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import java.util.HashMap;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class f extends PlatformViewFactory {

    /* renamed from: a  reason: collision with root package name */
    private final BinaryMessenger f26041a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(BinaryMessenger messenger) {
        super(StandardMessageCodec.INSTANCE);
        m.e(messenger, "messenger");
        this.f26041a = messenger;
    }

    @Override // io.flutter.plugin.platform.PlatformViewFactory
    public PlatformView create(Context context, int i10, Object obj) {
        m.c(obj, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.Any>");
        HashMap hashMap = (HashMap) obj;
        if (context != null) {
            return new e(context, this.f26041a, i10, hashMap);
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }
}
