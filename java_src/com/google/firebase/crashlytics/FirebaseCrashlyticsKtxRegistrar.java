package com.google.firebase.crashlytics;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
import k7.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import yc.o;
@Keep
/* loaded from: classes.dex */
public final class FirebaseCrashlyticsKtxRegistrar implements ComponentRegistrar {
    public static final a Companion = new a(null);

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c> getComponents() {
        List<c> h10;
        h10 = o.h();
        return h10;
    }
}
