package com.yandex.metrica.plugins;
/* loaded from: classes2.dex */
public class StackTraceItem {

    /* renamed from: a  reason: collision with root package name */
    private final String f14246a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14247b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f14248c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f14249d;

    /* renamed from: e  reason: collision with root package name */
    private final String f14250e;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f14251a;

        /* renamed from: b  reason: collision with root package name */
        private String f14252b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f14253c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f14254d;

        /* renamed from: e  reason: collision with root package name */
        private String f14255e;

        public StackTraceItem build() {
            return new StackTraceItem(this.f14251a, this.f14252b, this.f14253c, this.f14254d, this.f14255e);
        }

        public Builder withClassName(String str) {
            this.f14251a = str;
            return this;
        }

        public Builder withColumn(Integer num) {
            this.f14254d = num;
            return this;
        }

        public Builder withFileName(String str) {
            this.f14252b = str;
            return this;
        }

        public Builder withLine(Integer num) {
            this.f14253c = num;
            return this;
        }

        public Builder withMethodName(String str) {
            this.f14255e = str;
            return this;
        }
    }

    public String getClassName() {
        return this.f14246a;
    }

    public Integer getColumn() {
        return this.f14249d;
    }

    public String getFileName() {
        return this.f14247b;
    }

    public Integer getLine() {
        return this.f14248c;
    }

    public String getMethodName() {
        return this.f14250e;
    }

    private StackTraceItem(String str, String str2, Integer num, Integer num2, String str3) {
        this.f14246a = str;
        this.f14247b = str2;
        this.f14248c = num;
        this.f14249d = num2;
        this.f14250e = str3;
    }
}
