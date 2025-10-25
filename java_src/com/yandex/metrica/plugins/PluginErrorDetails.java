package com.yandex.metrica.plugins;

import com.yandex.metrica.impl.ob.A2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class PluginErrorDetails {

    /* renamed from: a  reason: collision with root package name */
    private final String f14234a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14235b;

    /* renamed from: c  reason: collision with root package name */
    private final List f14236c;

    /* renamed from: d  reason: collision with root package name */
    private final String f14237d;

    /* renamed from: e  reason: collision with root package name */
    private final String f14238e;

    /* renamed from: f  reason: collision with root package name */
    private final Map f14239f;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f14240a;

        /* renamed from: b  reason: collision with root package name */
        private String f14241b;

        /* renamed from: c  reason: collision with root package name */
        private List f14242c;

        /* renamed from: d  reason: collision with root package name */
        private String f14243d;

        /* renamed from: e  reason: collision with root package name */
        private String f14244e;

        /* renamed from: f  reason: collision with root package name */
        private Map f14245f;

        public PluginErrorDetails build() {
            String str = this.f14240a;
            String str2 = this.f14241b;
            List list = this.f14242c;
            List arrayList = new ArrayList();
            if (list != null) {
                arrayList = list;
            }
            String str3 = this.f14243d;
            String str4 = this.f14244e;
            Map map = this.f14245f;
            Map hashMap = new HashMap();
            if (map != null) {
                hashMap = map;
            }
            return new PluginErrorDetails(str, str2, arrayList, str3, str4, hashMap);
        }

        public Builder withExceptionClass(String str) {
            this.f14240a = str;
            return this;
        }

        public Builder withMessage(String str) {
            this.f14241b = str;
            return this;
        }

        public Builder withPlatform(String str) {
            this.f14243d = str;
            return this;
        }

        public Builder withPluginEnvironment(Map<String, String> map) {
            this.f14245f = map;
            return this;
        }

        public Builder withStacktrace(List<StackTraceItem> list) {
            this.f14242c = list;
            return this;
        }

        public Builder withVirtualMachineVersion(String str) {
            this.f14244e = str;
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

    public String getExceptionClass() {
        return this.f14234a;
    }

    public String getMessage() {
        return this.f14235b;
    }

    public String getPlatform() {
        return this.f14237d;
    }

    public Map<String, String> getPluginEnvironment() {
        return this.f14239f;
    }

    public List<StackTraceItem> getStacktrace() {
        return this.f14236c;
    }

    public String getVirtualMachineVersion() {
        return this.f14238e;
    }

    private PluginErrorDetails(String str, String str2, List list, String str3, String str4, Map map) {
        this.f14234a = str;
        this.f14235b = str2;
        this.f14236c = new ArrayList(list);
        this.f14237d = str3;
        this.f14238e = str4;
        this.f14239f = A2.a(A2.a(map));
    }
}
