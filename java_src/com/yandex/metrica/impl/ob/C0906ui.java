package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.ui  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0906ui {

    /* renamed from: a  reason: collision with root package name */
    public final a f13733a;

    /* renamed from: b  reason: collision with root package name */
    public final a f13734b;

    /* renamed from: com.yandex.metrica.impl.ob.ui$a */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f13735a;

        /* renamed from: b  reason: collision with root package name */
        public final long f13736b;

        public a(int i10, long j10) {
            this.f13735a = i10;
            this.f13736b = j10;
        }

        public String toString() {
            return "Item{refreshEventCount=" + this.f13735a + ", refreshPeriodSeconds=" + this.f13736b + '}';
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.ui$b */
    /* loaded from: classes2.dex */
    public enum b {
        WIFI,
        CELL
    }

    public C0906ui(a aVar, a aVar2) {
        this.f13733a = aVar;
        this.f13734b = aVar2;
    }

    public String toString() {
        return "ThrottlingConfig{cell=" + this.f13733a + ", wifi=" + this.f13734b + '}';
    }
}
