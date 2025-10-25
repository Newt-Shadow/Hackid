package io.appmetrica.analytics.plugins;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class PluginErrorDetails {

    /* renamed from: a  reason: collision with root package name */
    private final String f21311a;

    /* renamed from: b  reason: collision with root package name */
    private final String f21312b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList f21313c;

    /* renamed from: d  reason: collision with root package name */
    private final String f21314d;

    /* renamed from: e  reason: collision with root package name */
    private final String f21315e;

    /* renamed from: f  reason: collision with root package name */
    private final Map f21316f;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f21317a;

        /* renamed from: b  reason: collision with root package name */
        private String f21318b;

        /* renamed from: c  reason: collision with root package name */
        private List f21319c;

        /* renamed from: d  reason: collision with root package name */
        private String f21320d;

        /* renamed from: e  reason: collision with root package name */
        private String f21321e;

        /* renamed from: f  reason: collision with root package name */
        private Map f21322f;

        public PluginErrorDetails build() {
            return new PluginErrorDetails(this.f21317a, this.f21318b, (List) WrapUtils.getOrDefault(this.f21319c, new ArrayList()), this.f21320d, this.f21321e, (Map) WrapUtils.getOrDefault(this.f21322f, new HashMap()), 0);
        }

        public Builder withExceptionClass(String str) {
            this.f21317a = str;
            return this;
        }

        public Builder withMessage(String str) {
            this.f21318b = str;
            return this;
        }

        public Builder withPlatform(String str) {
            this.f21320d = str;
            return this;
        }

        public Builder withPluginEnvironment(Map<String, String> map) {
            this.f21322f = map;
            return this;
        }

        public Builder withStacktrace(List<StackTraceItem> list) {
            this.f21319c = list;
            return this;
        }

        public Builder withVirtualMachineVersion(String str) {
            this.f21321e = str;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static final class Platform {
        public static final String CORDOVA = "cordova";
        public static final String FLUTTER = "flutter";
        public static final String NATIVE = "native";
        public static final String REACT_NATIVE = "react_native";
        public static final String UNITY = "unity";
        public static final String XAMARIN = "xamarin";
    }

    /* synthetic */ PluginErrorDetails(String str, String str2, List list, String str3, String str4, Map map, int i10) {
        this(str, str2, list, str3, str4, map);
    }

    public String getExceptionClass() {
        return this.f21311a;
    }

    public String getMessage() {
        return this.f21312b;
    }

    public String getPlatform() {
        return this.f21314d;
    }

    public Map<String, String> getPluginEnvironment() {
        return this.f21316f;
    }

    public List<StackTraceItem> getStacktrace() {
        return this.f21313c;
    }

    public String getVirtualMachineVersion() {
        return this.f21315e;
    }

    private PluginErrorDetails(String str, String str2, List list, String str3, String str4, Map map) {
        this.f21311a = str;
        this.f21312b = str2;
        this.f21313c = new ArrayList(list);
        this.f21314d = str3;
        this.f21315e = str4;
        this.f21316f = CollectionUtils.getMapFromList(CollectionUtils.getListFromMap(map));
    }
}
