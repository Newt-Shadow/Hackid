package io.appmetrica.analytics.plugins;
/* loaded from: classes2.dex */
public class StackTraceItem {

    /* renamed from: a  reason: collision with root package name */
    private final String f21323a;

    /* renamed from: b  reason: collision with root package name */
    private final String f21324b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f21325c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f21326d;

    /* renamed from: e  reason: collision with root package name */
    private final String f21327e;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f21328a;

        /* renamed from: b  reason: collision with root package name */
        private String f21329b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f21330c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f21331d;

        /* renamed from: e  reason: collision with root package name */
        private String f21332e;

        public StackTraceItem build() {
            return new StackTraceItem(this.f21328a, this.f21329b, this.f21330c, this.f21331d, this.f21332e, 0);
        }

        public Builder withClassName(String str) {
            this.f21328a = str;
            return this;
        }

        public Builder withColumn(Integer num) {
            this.f21331d = num;
            return this;
        }

        public Builder withFileName(String str) {
            this.f21329b = str;
            return this;
        }

        public Builder withLine(Integer num) {
            this.f21330c = num;
            return this;
        }

        public Builder withMethodName(String str) {
            this.f21332e = str;
            return this;
        }
    }

    /* synthetic */ StackTraceItem(String str, String str2, Integer num, Integer num2, String str3, int i10) {
        this(str, str2, num, num2, str3);
    }

    public String getClassName() {
        return this.f21323a;
    }

    public Integer getColumn() {
        return this.f21326d;
    }

    public String getFileName() {
        return this.f21324b;
    }

    public Integer getLine() {
        return this.f21325c;
    }

    public String getMethodName() {
        return this.f21327e;
    }

    private StackTraceItem(String str, String str2, Integer num, Integer num2, String str3) {
        this.f21323a = str;
        this.f21324b = str2;
        this.f21325c = num;
        this.f21326d = num2;
        this.f21327e = str3;
    }
}
