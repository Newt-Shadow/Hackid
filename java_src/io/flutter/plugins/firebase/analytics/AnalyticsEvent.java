package io.flutter.plugins.firebase.analytics;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class AnalyticsEvent {
    public static final Companion Companion = new Companion(null);
    private final String name;
    private final Map<String, Object> parameters;

    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AnalyticsEvent fromList(List<? extends Object> pigeonVar_list) {
            kotlin.jvm.internal.m.e(pigeonVar_list, "pigeonVar_list");
            Object obj = pigeonVar_list.get(0);
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.String");
            return new AnalyticsEvent((String) obj, (Map) pigeonVar_list.get(1));
        }
    }

    public AnalyticsEvent(String name, Map<String, ? extends Object> map) {
        kotlin.jvm.internal.m.e(name, "name");
        this.name = name;
        this.parameters = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AnalyticsEvent copy$default(AnalyticsEvent analyticsEvent, String str, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = analyticsEvent.name;
        }
        if ((i10 & 2) != 0) {
            map = analyticsEvent.parameters;
        }
        return analyticsEvent.copy(str, map);
    }

    public final String component1() {
        return this.name;
    }

    public final Map<String, Object> component2() {
        return this.parameters;
    }

    public final AnalyticsEvent copy(String name, Map<String, ? extends Object> map) {
        kotlin.jvm.internal.m.e(name, "name");
        return new AnalyticsEvent(name, map);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AnalyticsEvent)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return GeneratedAndroidFirebaseAnalyticsPigeonUtils.INSTANCE.deepEquals(toList(), ((AnalyticsEvent) obj).toList());
    }

    public final String getName() {
        return this.name;
    }

    public final Map<String, Object> getParameters() {
        return this.parameters;
    }

    public int hashCode() {
        return toList().hashCode();
    }

    public final List<Object> toList() {
        List<Object> k10;
        k10 = yc.o.k(this.name, this.parameters);
        return k10;
    }

    public String toString() {
        String str = this.name;
        Map<String, Object> map = this.parameters;
        return "AnalyticsEvent(name=" + str + ", parameters=" + map + ")";
    }

    public /* synthetic */ AnalyticsEvent(String str, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : map);
    }
}
