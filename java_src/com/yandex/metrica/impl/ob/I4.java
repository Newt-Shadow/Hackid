package com.yandex.metrica.impl.ob;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
/* loaded from: classes2.dex */
public class I4 extends K4<X4> {

    /* renamed from: a  reason: collision with root package name */
    private final E5 f10219a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<EnumC0396a1, AbstractC0965x5<X4>> f10220b;

    /* renamed from: c  reason: collision with root package name */
    private C0869t5 f10221c;

    public I4(L3 l32) {
        E5 e52 = new E5(l32);
        this.f10219a = e52;
        this.f10221c = new C0869t5(e52);
        this.f10220b = a();
    }

    private HashMap<EnumC0396a1, AbstractC0965x5<X4>> a() {
        HashMap<EnumC0396a1, AbstractC0965x5<X4>> hashMap = new HashMap<>();
        hashMap.put(EnumC0396a1.EVENT_TYPE_ACTIVATION, new C0845s5(this.f10219a));
        hashMap.put(EnumC0396a1.EVENT_TYPE_START, new H5(this.f10219a));
        hashMap.put(EnumC0396a1.EVENT_TYPE_REGULAR, new B5(this.f10219a));
        C1013z5 c1013z5 = new C1013z5(this.f10219a);
        hashMap.put(EnumC0396a1.EVENT_TYPE_EXCEPTION_USER, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_EXCEPTION_USER_PROTOBUF, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_SEND_REFERRER, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_STATBOX, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_CUSTOM_EVENT, c1013z5);
        EnumC0396a1 enumC0396a1 = EnumC0396a1.EVENT_TYPE_SET_SESSION_EXTRA;
        E5 e52 = this.f10219a;
        hashMap.put(enumC0396a1, new G5(e52, e52.u()));
        hashMap.put(EnumC0396a1.EVENT_TYPE_APP_OPEN, new D5(this.f10219a));
        hashMap.put(EnumC0396a1.EVENT_TYPE_PURGE_BUFFER, new A5(this.f10219a));
        EnumC0396a1 enumC0396a12 = EnumC0396a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH;
        E5 e53 = this.f10219a;
        hashMap.put(enumC0396a12, new G5(e53, e53.l()));
        EnumC0396a1 enumC0396a13 = EnumC0396a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF;
        E5 e54 = this.f10219a;
        hashMap.put(enumC0396a13, new G5(e54, e54.l()));
        hashMap.put(EnumC0396a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH, new C0941w5(this.f10219a));
        hashMap.put(EnumC0396a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF, new C0941w5(this.f10219a));
        hashMap.put(EnumC0396a1.EVENT_TYPE_CURRENT_SESSION_CRASHPAD_CRASH_PROTOBUF, new C0917v5(this.f10219a));
        EnumC0396a1 enumC0396a14 = EnumC0396a1.EVENT_TYPE_API_NATIVE_CRASH_PROTOBUF;
        E5 e55 = this.f10219a;
        hashMap.put(enumC0396a14, new G5(e55, e55.l()));
        hashMap.put(EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE, new J5(this.f10219a));
        I5 i52 = new I5(this.f10219a);
        hashMap.put(EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED, i52);
        hashMap.put(EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF, i52);
        hashMap.put(EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT, i52);
        hashMap.put(EnumC0396a1.EVENT_TYPE_ANR, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_IDENTITY, new C0989y5(this.f10219a));
        hashMap.put(EnumC0396a1.EVENT_TYPE_SET_USER_INFO, new F5(this.f10219a));
        EnumC0396a1 enumC0396a15 = EnumC0396a1.EVENT_TYPE_REPORT_USER_INFO;
        E5 e56 = this.f10219a;
        hashMap.put(enumC0396a15, new G5(e56, e56.o()));
        EnumC0396a1 enumC0396a16 = EnumC0396a1.EVENT_TYPE_APP_ENVIRONMENT_UPDATED;
        E5 e57 = this.f10219a;
        hashMap.put(enumC0396a16, new G5(e57, e57.d()));
        EnumC0396a1 enumC0396a17 = EnumC0396a1.EVENT_TYPE_APP_ENVIRONMENT_CLEARED;
        E5 e58 = this.f10219a;
        hashMap.put(enumC0396a17, new G5(e58, e58.c()));
        hashMap.put(EnumC0396a1.EVENT_TYPE_SEND_USER_PROFILE, c1013z5);
        EnumC0396a1 enumC0396a18 = EnumC0396a1.EVENT_TYPE_SET_USER_PROFILE_ID;
        E5 e59 = this.f10219a;
        hashMap.put(enumC0396a18, new G5(e59, e59.x()));
        hashMap.put(EnumC0396a1.EVENT_TYPE_SEND_REVENUE_EVENT, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_SEND_AD_REVENUE_EVENT, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_IDENTITY_LIGHT, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_CLEANUP, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_VIEW_TREE, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_RAW_VIEW_TREE, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_SEND_ECOMMERCE_EVENT, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_STATBOX_EXP, c1013z5);
        hashMap.put(EnumC0396a1.EVENT_TYPE_WEBVIEW_SYNC, c1013z5);
        return hashMap;
    }

    public E5 b() {
        return this.f10219a;
    }

    public void a(EnumC0396a1 enumC0396a1, AbstractC0965x5<X4> abstractC0965x5) {
        this.f10220b.put(enumC0396a1, abstractC0965x5);
    }

    @Override // com.yandex.metrica.impl.ob.K4
    public H4 a(int i10) {
        LinkedList linkedList = new LinkedList();
        EnumC0396a1 a10 = EnumC0396a1.a(i10);
        C0869t5 c0869t5 = this.f10221c;
        if (c0869t5 != null) {
            c0869t5.a(a10, linkedList);
        }
        AbstractC0965x5<X4> abstractC0965x5 = this.f10220b.get(a10);
        if (abstractC0965x5 != null) {
            abstractC0965x5.a(linkedList);
        }
        return new H4(linkedList);
    }
}
